// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleStrings {
    string public myString = "Hello world";
    bytes public myBytes = "Hello world";

    function setMyString(string memory _myString) public {
        myString = _myString;

    }

    function compareTwoStrings(string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(_myString)) == keccak256(abi.encodePacked(myString));
    }
}