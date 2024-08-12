// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewDemo {
    uint256 public num1 = 2;
    uint256 public num2 = 4;

    // Function to compute product and sum of num1 and num2
    function getResult() public view returns (uint256 product, uint256 sum) {
        product = num1 * num2;
        sum = num1 + num2;
    }
}
