module build::build {
    use sui::tx_context::TxContext;
    use capability::capability::WorkshopCapability;

    /// Dummy init fonksiyonu
    fun init(ctx: &mut TxContext) {
        let _ = ctx;
    }

    /// Capability parametresi alan fonksiyon
    fun init_with_capability(ctx: &mut TxContext, capability: &mut WorkshopCapability) {
        let _ = ctx;
        let _ = capability;
    }
}
