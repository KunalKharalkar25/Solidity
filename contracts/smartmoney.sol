// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract smartmoney{
    
    function deposit() public payable {
        uint Cbalance;
        Cbalance += msg.value;
    }
    function contractbalance() public view returns(uint){
        return address(this).balance;
    }
    function withdrawall() public{
        address payable to = payable(msg.sender);
        to.transfer(contractbalance());
    }
    function withdrawtoadd(address payable to) public{
        to.transfer(contractbalance());
    }
}