module transaction_context::transaction_context {
    use sui::clock::{timestamp_ms, Clock};

    // Clock objesinden milisaniye zaman alır
    public fun get_time(clock: &Clock): u64 {
        timestamp_ms(clock)
    }
}