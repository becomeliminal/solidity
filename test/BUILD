subinclude("//build_defs:solidity")

# Test svm rule (downloads svm binary)
svm(
    name = "svm",
    version = "0.5.22",
    visibility = ["PUBLIC"],
)

# Test solc rule (requires SvmTool config - see .plzconfig)
solc(
    name = "solc_0.8.20",
    version = "0.8.20",
    visibility = ["PUBLIC"],
)

# Test sol_contract (uses default version download or SolcTool if configured)
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
