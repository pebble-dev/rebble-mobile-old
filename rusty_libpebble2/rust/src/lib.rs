use std::ffi::{CStr, CString};
use std::os::raw::c_char;

#[cfg(target_os = "android")]
mod android;

#[no_mangle]
pub unsafe extern "C" fn hello(to: *const c_char) -> *mut c_char {
    let c_str = CStr::from_ptr(to);
    let recipient = match c_str.to_str() {
        Ok(s) => s,
        Err(_) => "you",
    };

    CString::new(format!("Hello from Rusty LibPebble2 [Test 5]: {}", recipient))
        .unwrap()
        .into_raw()
}

#[no_mangle]
pub unsafe extern "C" fn hello_release(s: *mut c_char) {
    if s.is_null() {
        return;
    }
    CString::from_raw(s);
}
