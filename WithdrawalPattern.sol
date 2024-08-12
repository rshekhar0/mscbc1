// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WithdrawalPattern {
    address public owner; // Address of the contract owner
    uint256 public lockedBalance; // Total balance that is locked and not withdrawable
    uint256 public withdrawableBalance; // Balance that is currently withdrawable

    constructor() {
        owner = msg.sender; // Set the contract deployer as the owner
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Function to deposit Ether into the contract
    function deposit(uint256 amount) public payable {
        require(amount > 0, "Amount must be greater than zero");
        lockedBalance += amount; // Increase the locked balance by the deposited amount
    }

    // Function to withdraw Ether from the contract (only callable by the owner)
    function withdraw(uint256 amount) public onlyOwner {
        require(amount <= withdrawableBalance, "Insufficient withdrawable balance");
        withdrawableBalance -= amount; // Decrease the withdrawable balance by the withdrawn amount
        payable(msg.sender).transfer(amount); // Transfer Ether to the owner
    }

    // Function to unlock previously deposited Ether (only callable by the owner)
    function unlock(uint256 amount) public onlyOwner {
        require(amount <= lockedBalance, "Insufficient locked balance");
        lockedBalance -= amount; // Decrease the locked balance by the unlocked amount
        withdrawableBalance += amount; // Increase the withdrawable balance by the unlocked amount
    }
}


// Output
// Step 1-> Click on owner
// Step 2-> Enter an amount and click on deposit
// Step 3-> Click on locked balance button to display the locked amount in the account
// Step 4-> Click on withdrawable balance button
// Step 5-> Click on unlock button and enter any amount to transfer amount to withdrawable balance. Check locked balance and withdrawable balance.
// Step 6-> Enter any amount you want to withdraw and Click the withdraw button.You should get an error and the transaction should be reverted.