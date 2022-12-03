// SPDX - License - Identifier : GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract ByteArray
{
    bytes3 public b1;   //3 bytes array,  contains 3 bytes = 24 bits

    function setter() public
    {
        b1 = 'abc';
    }
}