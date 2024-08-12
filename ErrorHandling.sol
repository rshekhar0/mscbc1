// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorDemo {
    // Function to calculate the sum of two numbers and assert a condition
    function getSum(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 sum = a + b;
        
        // Assert statement to ensure the sum does not exceed 254
        assert(sum < 255); // Ensures the sum does not overflow an 8-bit unsigned integer

        return sum;
    }
}
