// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint256 public counter;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call");
        _;
    }

    function incrementCounter() public onlyOwner {
        counter++;
    }
}

// Step 1-> Click on owner button
// Step 2-> Click on counter button initially it is 0.
//Step 3-> Then click on increment counter button and again click on counter button, the counter has been increased
