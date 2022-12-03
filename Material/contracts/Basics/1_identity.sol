// SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.5.0 < 0.9.0; // it indicates that this contract is valid till 0.9.0 version of solidity language

contract Identity
{
    string name;
    uint age; // uint = unsigned integer

    // We want to assign the value inside the string and unit in the contract so for that we are making constructor
    constructor() public
    {
        name="Sahil";
        age=17;
    }

    // To print the values inside the names and age we are making a function
    function getName() view public returns(string memory)
    {
        return name;
    }

    function getAge() view public returns(uint)
    {
        return age;
    }

    // To increment the value under age variable we are making a function which is returning anything jsut modifying the value in age
    function setAge() public
    {
        age = age+1;
    }
}