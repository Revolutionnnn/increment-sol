// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IncrementNumber {
    uint public number;
    address owner;

    constructor(uint InicialValue) {
        number = InicialValue;
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function increment () public onlyOwner {
        number++;
    }
}