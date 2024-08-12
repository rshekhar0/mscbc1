// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableDemo {
    // State variables
    uint256 public sum = 4;
    uint256 public x;
    address public a;
    string public s = "welcome";

    // Function to add a value to the sum
    function add(uint256 _x) public {
        uint256 y = 2; // Local variable
        sum = sum + _x + y;
    }

    // Function to display the current value of sum
    function display() public view returns (uint256) {
        return sum;
    }

    // Function to display the string message
    function displayMsg() public view returns (string memory) {
        return s;
    }
}
