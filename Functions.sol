// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    function returnExample()
        public
        pure
        returns (
            uint256 sum,
            uint256 prod,
            uint256 diff,
            string memory message
        )
    {
        uint256 num1 = 10;
        uint256 num2 = 16;

        // Compute sum, product, and difference
        sum = num1 + num2;
        prod = num1 * num2;
        diff = num2 - num1;

        // Assign message
        message = "Multiple return values";
    }
}
