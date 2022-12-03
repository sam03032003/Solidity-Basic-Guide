// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

// Agenda: Make a Lottery application where participants can buy a lottery by giving 1 ethers and mininmum participants 
//          needed to activate a lottery is 3 participants, also Manager have the rights to pay the ethers and all
//          for any particular wallet address.

contract Lottery
{
    address public manager;
    address payable[] public participants;      // payable bcz we have to transfer ethers from this contract to participants


    // transfer contract address to manager using msg.sender
    constructor()
    {
        manager = msg.sender;   // msg.sender transfer contract address to manager and it is a global variable 
    } 


    // making function to transfer ether from participant account to manager address using payable
    // ******* receive function can be use once in the whole smart contract ************
    receive() external payable
    {
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    } 

    function getBalance() public view returns(uint)
    {
        require(msg.sender == manager);
        return address(this).balance;
    }


    // random selection
    function random() public view returns(uint)
    {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

    // Select winner
    function selectWinner() public 
    {
        require(msg.sender == manager);
        require(participants.length >= 3);

        uint r = random();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        winner.transfer(getBalance());
        

        // reset and start from beginning
        participants = new address payable[](0);
    }

}