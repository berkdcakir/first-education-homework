#[test_only]
module testing::testing_tests {
    use testing::testing;

    const ENotImplemented: u64 = 0;

    #[test]
    fun test_testing() {
        let result = testing::sum(5, 7);
        assert!(result == 12, 101);

        let bigger = testing::compare(10, 4);
        assert!(bigger == true, 102);

        let not_bigger = testing::compare(3, 7);
        assert!(not_bigger == false, 103);
    }

    #[test, expected_failure(abort_code = ::testing::testing_tests::ENotImplemented)]
    fun test_testing_fail() {
        abort ENotImplemented;
    }
}
