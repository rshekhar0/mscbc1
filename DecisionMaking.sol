// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IfElseDemo {
    uint public i; // State variable

    // Constructor to initialize the state variable
    constructor(uint _i) {
        i = _i;
    }

    // Function to set the value of i
    function setI(uint _i) public {
        i = _i;
    }

    // Function to perform decision making
    function decisionMaking() public view returns (string memory) {
        if (i % 2 == 0) {
            return "i is even";
        } else {
            return "i is odd";
        }
    }
}
