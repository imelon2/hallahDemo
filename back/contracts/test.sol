// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract test {

    string public name;
    event nameList(string name, uint index);

    constructor(string memory _name) {
        name = _name;
    }

    function getBlockNum() public view returns(uint) {
        return block.number;
    }

    function addList(string memory _name, uint _index) public {
        emit nameList(_name,_index);
    }

    function getName() public view returns(string memory) {
        return name;
    }
}