// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WhileDemo {
    uint[] public data; // State variable to hold dynamic array
    uint public x = 0; // State variable for loop condition

    // Constructor to initialize the contract
    constructor() {
        while (x < 5) {
            data.push(x); // Add current value of x to the array
            x = x + 1; // Increment x by 1
        }
    }

    // Function to return the data array
    function dispWhileLoop() public view returns (uint[] memory) {
        return data; // Return the current state of the data array
    }
}
