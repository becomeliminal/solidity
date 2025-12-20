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

# Forge standard library - tests automatic import remappings
sol_get(
    name = "forge-std",
    repo = "foundry-rs/forge-std",
    revision = "v1.9.4",
    import_prefix = "forge-std/",
    package = "src",
    visibility = ["PUBLIC"],
)

# OpenZeppelin - tests default import_prefix (should be "openzeppelin-contracts/")
sol_get(
    name = "openzeppelin-contracts",
    repo = "OpenZeppelin/openzeppelin-contracts",
    revision = "v5.0.2",
    package = "contracts",
    install = ["."],  # Install all to get interfaces, utils, etc.
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

# Test contract using OpenZeppelin with default import_prefix
sol_contract(
    name = "mytoken",
    src = "MyToken.sol",
    solc_version = "0.8.20",
    deps = [":openzeppelin-contracts"],
    languages = [],
    visibility = ["PUBLIC"],
)

# Test sol_test
sol_test(
    name = "counter_test",
    src = "Counter.t.sol",
    solc_version = "0.8.20",
    deps = [":counter", ":forge-std"],
)

# Test sol_get with contract_names but NO go bindings
# Verifies compilation happens even when languages=[]
sol_get(
    name = "solmate",
    repo = "transmissions11/solmate",
    revision = "v6",
    package = "src",
    install = ["tokens", "utils"],
    contract_names = ["ERC20"],
    languages = [],
    solc_version = "0.8.20",
    visibility = ["PUBLIC"],
)

# Test sol_contract with go bindings (simple contract, no deps)
sol_contract(
    name = "counter_go",
    src = "Counter.sol",
    solc_version = "0.8.20",
    contract_names = ["Counter"],
    languages = ["go"],
    visibility = ["PUBLIC"],
)
