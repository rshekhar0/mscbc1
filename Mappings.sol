// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LedgerBalance {
    mapping(address => uint256) public balances;

    function updateBalance(uint256 newBalance) public {
        balances[msg.sender] = newBalance;
    }
}

contract Updater {
    LedgerBalance public ledgerBalance;

    constructor() {
        ledgerBalance = new LedgerBalance();
    }

    function updateBalance(uint256 newBalance) public returns (uint256) {
        ledgerBalance.updateBalance(newBalance);
        return ledgerBalance.balances(address(this));
    }
}

//output
// updateBalance 100
// balances (LedgerBalance.updateBalance(uint256)) 0xEc29164D68c4992cEdd1D386118A47143fdcF142