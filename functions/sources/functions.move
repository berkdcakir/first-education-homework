module functions::functions {
    use std::string;
 

    // 🔢 Toplama fonksiyonu
    public fun sum(a: u64, b: u64): u64 {
        a + b
    }

    // 👋 Selamlama fonksiyonu (gelişmiş versiyon)
    public fun say_hello(_name: option::Option<string::String>): string::String {
        string::utf8(b"Hi")
    }

    // 🔍 Tek sayı kontrolü
    public fun check(n: u64): bool {
        n % 2 == 1
    }
}
