// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract messenger{
    uint public msgcounter;
    address public owner;
    string public message;
    constructor(){
        owner = msg.sender;
    }
    function sendmessage(string memory _message) public{
        if(msg.sender==owner){
        message = _message;
        msgcounter++;
        }
    }
}