class DataElement {
  final Map<String, dynamic>? data;

  DataElement({this.data});

  factory DataElement.fromJson(Map<String, dynamic>? json) {
    return DataElement(data: json);
  }

  Map<String, dynamic>? toJson() => data;
}

class TransferOut {
  final String destination; // Address
  final String asset; // Hash
  final int amount;
  final DataElement? extraData;

  TransferOut({
    required this.destination,
    required this.asset,
    required this.amount,
    this.extraData,
  });

  factory TransferOut.fromJson(Map<String, dynamic> json) {
    return TransferOut(
      destination: json['destination'] as String,
      asset: json['asset'] as String,
      amount: json['amount'] as int,
      extraData: json['extra_data'] != null 
          ? DataElement.fromJson(json['extra_data'] as Map<String, dynamic>?)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'destination': destination,
      'asset': asset,
      'amount': amount,
      'extra_data': extraData?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

class TransferIn {
  final String asset; // Hash
  final int amount;
  final DataElement? extraData;

  TransferIn({
    required this.asset,
    required this.amount,
    this.extraData,
  });

  factory TransferIn.fromJson(Map<String, dynamic> json) {
    return TransferIn(
      asset: json['asset'] as String,
      amount: json['amount'] as int,
      extraData: json['extra_data'] != null 
          ? DataElement.fromJson(json['extra_data'] as Map<String, dynamic>?)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'asset': asset,
      'amount': amount,
      'extra_data': extraData?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

abstract class EntryType {}

class CoinbaseEntry implements EntryType {
  final int reward;

  CoinbaseEntry({required this.reward});

  factory CoinbaseEntry.fromJson(Map<String, dynamic> json) {
    return CoinbaseEntry(reward: json['reward'] as int);
  }
}

class BurnEntry implements EntryType {
  final String asset;
  final int amount;

  BurnEntry({required this.asset, required this.amount});

  factory BurnEntry.fromJson(Map<String, dynamic> json) {
    return BurnEntry(
      asset: json['asset'] as String,
      amount: json['amount'] as int,
    );
  }
}

class IncomingEntry implements EntryType {
  final String from;
  final List<TransferIn> transfers;

  IncomingEntry({required this.from, required this.transfers});

  factory IncomingEntry.fromJson(Map<String, dynamic> json) {
    return IncomingEntry(
      from: json['from'] as String,
      transfers: (json['transfers'] as List)
          .map((e) => TransferIn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class OutgoingEntry implements EntryType {
  final List<TransferOut> transfers;
  final int fee;
  final int nonce;

  OutgoingEntry({
    required this.transfers,
    required this.fee,
    required this.nonce,
  });

  factory OutgoingEntry.fromJson(Map<String, dynamic> json) {
    return OutgoingEntry(
      transfers: (json['transfers'] as List)
          .map((e) => TransferOut.fromJson(e as Map<String, dynamic>))
          .toList(),
      fee: json['fee'] as int,
      nonce: json['nonce'] as int,
    );
  }
}

class TransactionEntry {
  final String hash;
  final int topoheight;
  final EntryType entry;

  TransactionEntry({
    required this.hash,
    required this.topoheight,
    required this.entry,
  });

  factory TransactionEntry.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('coinbase')) {
      return TransactionEntry(
        hash: json['hash'] as String,
        topoheight: json['topoheight'] as int,
        entry: CoinbaseEntry.fromJson(json['coinbase'] as Map<String, dynamic>),
      );
    } else if (json.containsKey('burn')) {
      return TransactionEntry(
        hash: json['hash'] as String,
        topoheight: json['topoheight'] as int,
        entry: BurnEntry.fromJson(json['burn'] as Map<String, dynamic>),
      );
    } else if (json.containsKey('incoming')) {
      return TransactionEntry(
        hash: json['hash'] as String,
        topoheight: json['topoheight'] as int,
        entry: IncomingEntry.fromJson(json['incoming'] as Map<String, dynamic>),
      );
    } else if (json.containsKey('outgoing')) {
      return TransactionEntry(
        hash: json['hash'] as String,
        topoheight: json['topoheight'] as int,
        entry: OutgoingEntry.fromJson(json['outgoing'] as Map<String, dynamic>),
      );
    } else {
      throw FormatException('Unknown entry type');
    }
  }
}