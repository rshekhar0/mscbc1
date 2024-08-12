// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Calculator {
    function getResult() external pure returns (uint256);
}

contract Test is Calculator {
    constructor() {}

    function getResult() external pure override returns (uint256) {
        uint256 a = 1;
        uint256 b = 2;
        uint256 result = a + b;
        return result;
    }
}

// Outputs Flow of execution 
//Step 1-> Select Test contract and deploy 
//Step 2-> The contact will deploy as below  
//Step 3-> Click on getResult to get sum of a+b
