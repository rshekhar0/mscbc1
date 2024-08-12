// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract InlineAssembly {
    // Function to add 16 to a given number using inline assembly
    function add(uint256 a) public view returns (uint256 b) {
        assembly {
            // Calculate c = a + 16
            let c := add(a, 16)
            
            // Store c at memory location 0x80
            mstore(0x80, c)
            
            // Start a new assembly block for nested operations
            {
                // Load the value at storage slot c into d
                let d := sload(c)
                
                // Calculate b = d + 12
                b := add(d, 12)
            }
            
            // Calculate b = b + c
            b := add(b, c)
        }
    }
}
