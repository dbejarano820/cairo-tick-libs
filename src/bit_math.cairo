use array::ArrayTrait;
use traits::{Into, TryInto, BitAnd};
use option::OptionTrait;

fn most_significant_bit(mut x: u256) -> u256 {
    let mut r: u256 = 0;
    loop {
        if x == 0 {
            break;
        }
        x /= 2;
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
        x /= 2;
        idx += 1;
    };
    r
}
