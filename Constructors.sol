// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Creating a contract
contract ConstructorExample {
    string public str;

    constructor() {
        str = "Yesterday's the past, tomorrow's the future, but today is a gift. That's why it's called the present.";
    }

    function getValue() public view returns (string memory) {
        return str;
    }
}
