// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    function callAddMod() public pure returns (uint) {
        return addmod(7, 3, 3);
    }

    function callMulMod() public pure returns (uint) {
        return mulmod(7, 3, 3);
    }
}

//Summary:
//callAddMod():

//Computes (7 + 3) % 3.
//Returns 1.
//callMulMod():

//Computes (7 * 3) % 3.
//Returns 0.