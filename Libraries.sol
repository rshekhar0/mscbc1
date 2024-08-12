// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Library Definition
library myMathLib {
    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function exponent(uint256 a, uint256 b) public pure returns (uint256) {
        return a ** b;
    }
}

// Contract that uses the Library
contract UseLib {
    function getsum(uint256 x, uint256 y) public pure returns (uint256) {
        return myMathLib.sum(x, y);
    }

    function getexponent(uint256 x, uint256 y) public pure returns (uint256) {
        return myMathLib.exponent(x, y);
    }
}

//getsum: You would call this function to add two numbers together. For example, calling getsum(3, 4) would return 7.
//getexponent: This function would be called to compute the power of one number raised to another. 
//For example, calling getexponent(2, 3) would return 8 (since 2 to the power 3 = 8)