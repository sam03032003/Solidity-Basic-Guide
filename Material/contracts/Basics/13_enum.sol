// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Enum
{
    // here we are making variable of """ enum """ type
    enum user{allowed, not_allowed, hold}

    // here we are making variable of """ user """ type
    user public u1 = user.allowed;

    uint public lottery = 1000;
    function owner() public
    {
        if(u1 == user.allowed){ lottery = 0; }

    }

}