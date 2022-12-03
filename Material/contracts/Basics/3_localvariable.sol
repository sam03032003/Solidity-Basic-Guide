// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract local
{

//  string memory name = "Sahil"; -----> Error, memory keyword can't get used in contract level

    function store() pure public returns(uint)
    {
        string memory name = "Sahil";
        // string name = "Sahil"; -----> Error because name is a local variable and if we use string only then it will
                                    // stored in storage of the contract which will create the conflict between 
                                    // function and contract. So once we use memory now it is stored in Memory of function

        uint age = 11;
        return age; 
    }
}