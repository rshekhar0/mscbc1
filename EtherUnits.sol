// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityTest {
    // Function to convert an amount to Wei
    function convertAmountToWei(uint256 amount) public pure returns (uint256) {
        return amount * 1 wei;
    }

    // Function to convert an amount to Ether
    function convertAmountToEther(uint256 amount) public pure returns (uint256) {
        return amount * 1 ether;
    }

    // Function to convert an amount to Gwei
    function convertAmountToGwei(uint256 amount) public pure returns (uint256) {
        return amount * 1 gwei;
    }

    // Function to convert seconds to minutes
    function convertSecondsToMinutes(uint256 seconds_) public pure returns (uint256) {
        return seconds_ / 60;
    }

    // Function to convert seconds to hours
    function convertSecondsToHours(uint256 seconds_) public pure returns (uint256) {
        return seconds_ / 3600;
    }

    // Function to convert minutes to seconds
    function convertMinutesToSeconds(uint256 minutes_) public pure returns (uint256) {
        return minutes_ * 60;
    }
}
