use array::ArrayTrait;
use traits::{Into, TryInto, BitAnd};
use option::OptionTrait;

use cairo_tick_libs::utils::operators::{shl, shr, pow};

fn most_significant_bit(mut x: u256) -> u256 {
    let mut r: u256 = 0;
    loop {
        if x == 0 {
            break;
        }
        x = shr(x, 1);
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

        if BitAnd::bitand(x, 1) != 0 {
            r = idx;
            break;
        }
        x = shr(x, 1);
        idx += 1;
    };
    r
}
