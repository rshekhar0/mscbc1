// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LoopDemo {
    uint[] public data; // State variable to hold dynamic array

    // Function to populate the array using user input
    function populateArray(uint count) public {
        // Clear the array before populating
        delete data;

        // Populate the array with values from 0 to count-1
        for (uint i = 0; i < count; i++) {
            data.push(i); // Add current value of i to the array
        }
    }

    // Function to return the data array
    function getData() public view returns (uint[] memory) {
        return data; // Return the current state of the data array
    }
}
