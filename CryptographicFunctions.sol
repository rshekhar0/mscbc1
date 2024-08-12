// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    function callKeccak256() public pure returns(bytes32 result){
        return keccak256("BLOCKCHAIN");
    }

    function callSha256() public pure returns(bytes32 result){
        return sha256("BLOCKCHAIN");
    }

    function callRipemd() public pure returns (bytes20 result){
        return ripemd160("BLOCKCHAIN");
    }
}


//Summary:
//Keccak-256 is used for secure hash generation and is the basis for Ethereum's hashing.
//SHA-256 is commonly used in various security protocols and blockchain technologies.
//RIPEMD-160 is used in Bitcoin for address generation.