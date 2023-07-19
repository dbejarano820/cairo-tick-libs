use cairo_tick_libs::utils::math::pow;

trait BitShift<T> {
    fn shl(ref self: T, n: u256);
    fn shr(ref self: T, n: u256);
}

impl U256BitShift of BitShift<u256> {
    #[inline(always)]
    fn shl(ref self: u256, n: u256) {
        self = self * pow(2, n)
    }

    #[inline(always)]
    fn shr(ref self: u256, n: u256) {
        self = self / pow(2, n)
    }
}
