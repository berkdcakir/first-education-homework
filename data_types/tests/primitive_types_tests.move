#[test_only]
module primitive_types::primitive_types_tests {
    use primitive_types::primitive_types;

    #[test]
    fun test_primitive_types() {
        primitive_types::show_primitive_types();
    }

    const ENotImplemented: u64 = 0;

    #[test, expected_failure(abort_code = ::primitive_types::primitive_types_tests::ENotImplemented)]
    fun test_primitive_types_fail() {
        abort ENotImplemented;
    }
}
