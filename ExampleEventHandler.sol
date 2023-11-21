// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract TheBlockchainMessenger {

    address public owner;
    uint public messageCount;
    string public myString;

    constructor() {
        owner = msg.sender;
    }

    function updateStringValue(string memory _updateString) public {
        if(owner == msg.sender) {
            myString = _updateString;
            messageCount++;
        }
        
    }
}