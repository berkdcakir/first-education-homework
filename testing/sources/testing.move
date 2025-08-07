module testing::testing {
    // Toplama fonksiyonu
    public fun sum(a: u64, b: u64): u64 {
        a + b
    }

    // Karşılaştırma fonksiyonu
    public fun compare(a: u64, b: u64): bool {
        a > b
    }

    #[test]
    fun simple_test() {
        let sum = 2 + 2;
        assert!(sum == 4, 100);
    }
}
