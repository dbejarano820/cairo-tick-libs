use integer::BoundedInt;

use cairo_tick_libs::bit_math::{most_significant_bit, least_significant_bit};

#[test]
#[available_gas(20000000)]
fn msb_happy_path() {
    assert(most_significant_bit(1) == 0, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn msb_larger_number() {
    // 1111111
    assert(most_significant_bit(128) == 7, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn msb_bigger_number() {
    // 11110100001001000000
    assert(most_significant_bit(1000000) == 19, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn msb_maximum_256() {
    assert(most_significant_bit(BoundedInt::max()) == 255, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn msb_random_number() {
    assert(most_significant_bit(12345) ==  13, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn lsb_happy_path() {
    assert(least_significant_bit(1) == 0, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn lsb_larger_number() {
    //10000000
    assert(least_significant_bit(128) == 7, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn lsb_bigger_number() {
    // 11110100001001000000
    assert(least_significant_bit(1000000) == 6, 'invalid result');
}

#[test]
#[available_gas(200000000000)]
fn lsb_maximum_256() {
    assert(least_significant_bit(BoundedInt::max()) == 0, 'invalid result');
}

#[test]
#[available_gas(20000000)]
fn lsb_random_number() {
    // 11000000111001
    let ret = least_significant_bit(12345);
    assert(ret ==  0, 'invalid result');
}
