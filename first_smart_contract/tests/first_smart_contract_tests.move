#[test_only]
module first_smart_contract::first_smart_contract_tests {
    use first_smart_contract::first_smart_contract;
    use sui::tx_context::TxContext;

    const ENotImplemented: u64 = 0;

    #[test]
    fun test_first_smart_contract(ctx: &mut TxContext) {
        let obj = first_smart_contract::create(ctx);
        assert!(obj.value == 42, 100);
    }

    #[test, expected_failure(abort_code = ::first_smart_contract::first_smart_contract_tests::ENotImplemented)]
    fun test_first_smart_contract_fail() {
        abort ENotImplemented;
    }
}
