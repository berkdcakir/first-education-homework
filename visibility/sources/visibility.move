module visibility::visibility {
    // public → başka modüller çağırabilir
    public fun public_fun(): u64 {
        42
    }

    // private → sadece bu modül içinde çağrılabilir
    fun private_fun(): u64 {
        7
    }

    // entry → transaction ile çağrılabilir
    public entry fun entry_fun() {
        let _ = public_fun();       // ✅ public çağrılabilir
        let _ = private_fun();      // ✅ private çağrılabilir çünkü aynı modül
    }
}