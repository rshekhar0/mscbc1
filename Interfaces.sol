// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Calculator {
    function getResult() external pure returns (uint);
}

contract Test is Calculator {
    constructor() {}

    function getResult() external pure override returns (uint) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }
}

// (Test)Step 1-> Click on getResult to display sum
