import 'dart:async';
import 'api/api.dart'

class ProgressStream {
  static final _controller = StreamController<Report>.broadcast();

  static void startListening() {
    api.progressReportStream.listen((report) {
      _controller.add(report);
    }, onError: (e) {
      print("Error receiving progress report: $e");
    });
  }

  static Stream<Report> get stream => _controller.stream;
}
