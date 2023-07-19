fn pow(x: u256, n: u256) -> u256 {
    if n == 0 {
        1
    } else if (n & 1) == 1 {
        x * pow(x * x, n / 2)
    } else {
        pow(x * x, n / 2)
    }
}

fn shl(x: u256, n: u256) -> u256 {
    x * pow(2, n)
}

fn shr(x: u256, n: u256) -> u256 {
    x / pow(2, n)
}
