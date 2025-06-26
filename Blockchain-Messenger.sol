// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract blockchain {
    uint public ChangeCounter;

    address public owner;

    string public message;

    constructor() {
        owner = msg.sender;
    }

    function changemessage(string memory _newmessage) public {
        if (msg.sender == owner) {
            message = _newmessage;
            ChangeCounter++;   
        }
    }

}