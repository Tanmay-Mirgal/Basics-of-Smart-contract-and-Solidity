// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //solidity versions
import {SimpleStorage} from "./FirstContract.sol";

contract AddFiveStore is SimpleStorage{

    function greet() public pure returns(string memory){
        return "Hello";
    }
    function store(uint256 _newNumber) public override {
        FavouriteNumber = _newNumber + 5;
    }
}