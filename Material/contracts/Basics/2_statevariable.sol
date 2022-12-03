// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract state
{
    // The variable which is declare inside the contract itself are called as state variables
    // State variable is stored inside blockchain itself directly
    // If we increase the state variable then we need to pay more gas fees

//  unit age;           if I'm not using public then I'm not able to call the age unsigned variable
    uint public age; // if we want to call the age variable then we have to use the public variable 
    
    // age = 10;   ---> Error, can't initialize state variable like this if you want to initialize then do it in the begining 
    // OR   make a CONSTRUCTOR
    constructor () public
    {
        age = 100;
    }
    // Or make a get function
    function setAge() public
    {
        age = 200;
    }

}