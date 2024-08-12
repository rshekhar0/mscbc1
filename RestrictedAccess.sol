// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract RestrictedAccess {
    address public owner = msg.sender; // Address of the contract creator (initial owner)
    uint256 public creationTime = block.timestamp; // Timestamp of contract creation

    // Modifier: Restricts access to functions only by a specific account
    modifier onlyBy(address _account) {
        require(msg.sender == _account, "Sender not authorized!");
        _;
    }

    // Modifier: Restricts access to functions only after a specified timestamp
    modifier onlyAfter(uint256 _time) {
        require(block.timestamp >= _time, "Function was called too early!");
        _;
    }

    // Modifier: Requires a minimum amount of Ether to be sent with the function call
    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough Ether provided!");
        _;
    }

    // Function: Allows changing the owner forcibly by paying 200 ether
    function forceOwnerChange(address _newOwner)
        public
        payable
        costs(200 ether) // Requires at least 200 ether to be sent
    {
        owner = _newOwner; // Sets a new owner
    }

    // Function: Allows changing the owner only by the current owner
    function changeOwner(address _owner) public onlyBy(owner) {
        owner = _owner; // Sets a new owner
    }

    // Function: Allows the current owner to disown the contract after 3 weeks
    function disown() public onlyBy(owner) onlyAfter(creationTime + 3 weeks) {
        delete owner; // Deletes the owner, making the contract ownerless
    }
}

// Output
// Step 1-> Click on owner to create an owner object
// Step 2-> Click on lastOwnerChange button
// Step 3-> Change the address of the account from Account dropdown in Deploy tab of Remix IDE
// Step 4-> Copy the address (random)
// Step 5-> Paste the address in changeOwner input and click on changeOwner.
// Step 6-> You should get an error as following
// Step 7-> If you click on buycontract it should give an error as follows
// Step 8-> Now, paste the actual address of the account in the changeowner input and click on changeowner