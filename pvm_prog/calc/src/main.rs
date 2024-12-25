#![no_std]
#![no_main]

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        core::arch::asm!("unimp", options(noreturn));
    }
}

#[polkavm_derive::polkavm_export]
extern "C" fn add_numbers(a: u32, b: u32) -> u32 {
    a + b
}

#[polkavm_derive::polkavm_export]
extern "C" fn sub_numbers(a: u32, b: u32) -> u32 {
    a - b
}

#[polkavm_derive::polkavm_export]
extern "C" fn mul_numbers(a: u32, b: u32) -> u32 {
    a * b
}
