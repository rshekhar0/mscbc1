// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint256 public n;

    function set(uint256 value) external {
        n = value;
    }

    receive() external payable {
        n = 0;
    }
}

contract Example {
    function callA(A a) public payable returns (bool) {
        (bool success, ) = address(a).call{value: msg.value}(abi.encodeWithSignature("set(uint256)", 0));
        require(success, "Call failed");

        address payable payableA = payable(address(a));
        return payableA.send(2 ether);
    }
}
