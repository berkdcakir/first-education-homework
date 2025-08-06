/// Module: testing
module testing::testing;

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

#[test]
fun simple_test() {
    let sum = 2 + 2;
    assert!(sum == 4);
}
