// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract_demo {
    string public message = "Hello"; // Updated to use public visibility for state variable

    function dispMsg() public view returns (string memory) {
        return message;
    }
}
