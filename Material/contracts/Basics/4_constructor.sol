// SPDX-License-Identifier: GPL - 3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract local2
{
    // Step 1: This is right to assign value inside count but we'll not able to see the count button after deployment
    // uint count;

    // constructor()
    // {
    //     count = 0;
        
    // }

    // // Step 2: Using this we can able to use button after execution
    // uint public age;

    // constructor()       // This is Wrong practice more than 1 constructor is not allowed
    // {
    //     age = 10;
    // }


    // Result: Right Practise 

    uint count;
    uint public age;

    // Without argument
    // constructor()
    // {
    //     count = 10;
    //     age = 100;
    // }

    // With argument
    constructor(uint new_count)
    {
        count = new_count;
        age = new_count;
    }

    
}
