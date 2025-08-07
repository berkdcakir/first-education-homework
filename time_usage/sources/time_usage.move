module time_usage::time_usage {
    use sui::tx_context::{TxContext, epoch};

    /// Sahte versiyon – dışarıdan epoch alan fonksiyon
    public fun compare(clock_epoch: u64, ctx: &TxContext): bool {
        let current_epoch = epoch(ctx);
        clock_epoch < current_epoch
    }
}