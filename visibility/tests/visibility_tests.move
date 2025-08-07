#[test_only]
module visibility::visibility_tests {
    use visibility::visibility;

    const ENotImplemented: u64 = 0;

    #[test]
    fun test_visibility() {
        let x = visibility::public_fun();
        assert!(x == 42, 100);
    }

    #[test, expected_failure(abort_code = ::visibility::visibility_tests::ENotImplemented)]
    fun test_visibility_fail() {
        abort ENotImplemented
    }
}