#!/usr/bin/python3

from pyiele import *

code = get_bytecode_of("contracts/About.sol", "About")
#Init
walletId = init_wallet()
print("Wallet ID:", walletId)

sender = send(wallet_generateTransparentAccount(walletId))["address"]
print("Fresh account:", sender)

#Deploy Contract
contract_address = deploy_contract(walletId, sender, code, [])

# Test 1
(sc, result) = run_function("even(uint256)", [31], walletId, sender, contract_address)
assert_result(result, [True], "Test1 went wrong")
print("Test 1:",result)



