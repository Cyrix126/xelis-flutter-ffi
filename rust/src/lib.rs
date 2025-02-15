pub mod api;

#[no_mangle]
pub extern "C" fn dummy_method_to_enforce_bundling() -> i64 {
    42
}

pub use flutter_rust_bridge::*;
mod frb_generated; /* AUTO INJECTED BY flutter_rust_bridge. This line may not be accurate, and you can change it according to your needs. */
