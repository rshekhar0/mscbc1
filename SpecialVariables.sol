// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Special_Variables {
    // Mapping to store roll numbers associated with addresses
    mapping(address => uint256) rollNo;

    // Function to set roll number for the caller's address
    function setRollNo(uint256 _myNumber) public {
        rollNo[msg.sender] = _myNumber;
    }

    // Function to retrieve roll number of the caller's address
    function whatIsMyRollNumber() public view returns (uint256) {
        return rollNo[msg.sender];
    }
}
