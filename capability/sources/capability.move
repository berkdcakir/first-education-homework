module capability::capability {
    use std::vector;
    use std::string;
    use sui::tx_context::{TxContext};

    /// Capability struct
    public struct WorkshopCapability has key {}

    /// Store
    public struct WorkshopStore has key {
        lessons: vector<string::String>,
    }

    /// Capability ve ders listesi oluşturur
    public entry fun init_workshop_with_capability(_ctx: &mut TxContext): (WorkshopCapability, WorkshopStore) {
        (
            WorkshopCapability {},
            WorkshopStore { lessons: vector::empty() }
        )
    }

    /// Ders ekleme fonksiyonu
    public entry fun add_lesson(
        store: &mut WorkshopStore,
        _cap: &WorkshopCapability,
        lesson: string::String
    ) {
        vector::push_back(&mut store.lessons, lesson);
    }
}
