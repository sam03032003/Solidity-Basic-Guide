// SPDX-License-Identifier: GPL - 3.0

// Overflow problem in solidity was arrived in 2018 ERC version so we are using the older version of solidity

// pragma solidity 0.5.0 ;

pragma solidity 0.8.17;

contract overflow
{
    uint8 public money = 10;

    function setter() public 
    {
        money = money + 1;
    }
}