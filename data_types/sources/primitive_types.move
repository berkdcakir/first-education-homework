module primitive_types::primitive_types {
    use std::string;
    use std::vector;

    public fun show_primitive_types() {
        let _name = string::utf8(b"berk");
        let _age = 22u8;
        let _is_coder = true;

        let mut lessons = vector::empty<string::String>();
        vector::push_back(&mut lessons, string::utf8(b"Move"));
        vector::push_back(&mut lessons, string::utf8(b"Sui"));
    }
}
