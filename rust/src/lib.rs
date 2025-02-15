pub mod api;

#[no_mangle]
pub extern "C" fn dummy_method_to_enforce_bundling() -> i64 {
    42 // Return any fixed value, it's just to force linking
}

mod frb_generated; /* AUTO INJECTED BY flutter_rust_bridge. This line may not be accurate, and you can change it according to your needs. */
