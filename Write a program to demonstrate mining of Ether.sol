// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherMining {
    address public miner; // Address of the miner who will receive rewards
    uint public reward;   // Reward amount in Wei (smallest unit of Ether)

    event NewBlockMined(uint blockNumber, address miner, uint reward);

    constructor() {
        miner = msg.sender; // Initialize the miner with the contract deployer's address
        reward = 1 ether;   // Set the reward to 1 Ether (for demonstration purposes)
    }

    function mine() public {
        require(msg.sender == miner, "Only the miner can mine");
        
        // Simulate mining by emitting an event and updating some state
        emit NewBlockMined(block.number, miner, reward);
    }
}

//blockNumber: The number of the block in which the event was emitted. 
//This number increases with each new block added to the blockchain.
//miner: The Ethereum address of the miner who called the mine function.
//reward: The reward amount in Wei (1 Ether, which is 10 to the power 18 Wei).

//Summary:
//The output of the contract interaction is not a printed value but an event log on the blockchain. 
//The event contains details about the block number, the miner’s address, and the reward amount. 
//This allows anyone to track mining activities and rewards associated with the contract.






