use anyhow::{Context, Result};
use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use serde_json::json;
use xelis_common::{api::DataElement, crypto::Address};
use xelis_common::utils::from_coin;

use xelis_common::{
    config::{
        COIN_DECIMALS,
    },
};

// Check if the given address is valid
#[frb(sync)]
pub fn is_address_valid(str_address: String) -> bool {
    match Address::from_string(&str_address) {
        Ok(_) => true,
        Err(_) => false,
    }
}

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct IntegratedAddress {
    address: Address,
    data: Option<DataElement>,
}

// Split integrated address (if any) into address and data
#[frb(sync)]
pub fn split_integrated_address_json(integrated_address: String) -> Result<String> {
    let address = Address::from_string(&integrated_address).context("Invalid address")?;
    let (data, address) = address.extract_data();
    Ok(json!(IntegratedAddress { address, data }).to_string())
}

// Format any coin value using the requested decimals count
pub fn format_coin(value: u64, decimals: u8) -> String {
  format!("{:.1$}", value as f64 / 10usize.pow(decimals as u32) as f64, decimals as usize)
}

// Format value using XELIS decimals
pub fn format_xelis(value: u64) -> String {
  format_coin(value, COIN_DECIMALS)
}

// Convert a XELIS amount from string to a u64
pub fn from_xelis(value: impl Into<String>) -> Option<u64> {
  from_coin(value, COIN_DECIMALS)
}