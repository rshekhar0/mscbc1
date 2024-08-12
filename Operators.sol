// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    uint16 public a = 20;
    uint16 public b = 10;
    uint256 public sum;
    uint256 public diff;
    uint256 public mul;
    uint256 public div;
    uint256 public mod;
    uint256 public dec;
    uint256 public inc;

    constructor() {
        sum = a + b;
        diff = a - b;
        mul = a * b;
        div = a / b;
        mod = a % b;
        b--; // Decrement b
        dec = b;
        a++; // Increment a
        inc = a;
    }
}
