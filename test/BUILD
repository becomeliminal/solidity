subinclude("//build_defs:solidity")

# Test basic sol_contract compilation
sol_contract(
    name = "counter",
    src = "Counter.sol",
    solc_version = "0.8.20",
    contract_names = ["Counter"],
    languages = [],  # No Go bindings in basic test
    visibility = ["PUBLIC"],
)

# Test sol_test
sol_test(
    name = "counter_test",
    src = "Counter.t.sol",
    solc_version = "0.8.20",
    deps = [":counter"],
)
