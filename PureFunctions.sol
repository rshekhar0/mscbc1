// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PureDemo {
    // Function to compute product and sum of num1 and num2
    function getResult() public pure returns (uint256 product, uint256 sum) {
        uint256 num1 = 2; // Local variable num1 initialized to 2
        uint256 num2 = 4; // Local variable num2 initialized to 4

        // Compute product of num1 and num2
        product = num1 * num2;

        // Compute sum of num1 and num2
        sum = num1 + num2;
    }
}
