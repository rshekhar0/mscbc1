// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoWhile {
    uint256[] public data; // State variable to hold dynamic array
    uint8 public j = 0; // State variable for loop condition

    // Function to demonstrate 'Do-While loop' and populate data array
    function loop() public returns (uint256[] memory) {
        do {
            j++;
            data.push(j); // Add current value of j to the array
        } while (j < 5); // Loop continues until j is less than 5
        return data;
    }

    // Function to return the data array
    function display() public view returns (uint256[] memory) {
        return data; // Return the current state of the data array
    }
}
