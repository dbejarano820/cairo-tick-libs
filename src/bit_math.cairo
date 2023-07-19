use array::ArrayTrait;
use option::OptionTrait;

use cairo_tick_libs::utils::bits::{BitShift};

fn most_significant_bit(mut x: u256) -> u256 {
    let mut r: u256 = 0;
    loop {
        if x == 0 {
            break;
        }
        x.shr(1);
        r += 1;
    };
    r - 1
}

fn least_significant_bit(mut x: u256) -> u256 {
    let mut r: u256 = 0;
    let mut idx = 0;
    loop {
        if idx == 256 {
            break;
        }

        if x & 1 != 0 {
            r = idx;
            break;
        }
        x.shr(1);
        idx += 1;
    };
    r
}
