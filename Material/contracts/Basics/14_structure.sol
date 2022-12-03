// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.1 < 0.9.0;

struct Student
{
    uint roll;
    string name;
}

contract School
{
    Student public s1;
    constructor (uint _roll, string memory _name)
    {
        s1.roll = _roll;
        s1.name = _name;
    }
}