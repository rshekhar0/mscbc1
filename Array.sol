// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayDemo {
    // Static Array
    uint[6] public arr2 = [10, 20, 30, 0, 0, 0]; // Initialize with zeros for remaining elements

    // Function to return the static array
    function dispStaticArray() public view returns (uint[6] memory) {
        return arr2;
    }

    // Dynamic Array
    uint[] public arr1;

    // Constructor to initialize the dynamic array
    constructor() {
        uint x = 5; // Start with 5
        while (x > 0) {
            arr1.push(x); // Push the current value of x to arr1
            x = x - 1; // Decrement x by 1
        }
    }

    // Function to return the dynamic array
    function dispDynamicArray() public view returns (uint[] memory) {
        return arr1;
    }

    // Function to allow user to add elements to the dynamic array
    function addToArray(uint _value) public {
        arr1.push(_value); // Add the user input to the dynamic array
    }
}
