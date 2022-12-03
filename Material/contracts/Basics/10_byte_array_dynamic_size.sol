// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract DnyArrayNew
{
    bytes public b1 = 'abc';

    function pushElement() public
    {
        b1.push('d');
    }

    function getElement(uint index) public view returns(bytes1)
    {
        return b1[index];
    }

    function getLength() public view returns(uint)
    {
        return b1.length;
    }
}