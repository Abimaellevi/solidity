// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./StorageFactory.sol"; 

contract AddFiveStorage is SimpleStorage{
    function store(uint256 _newNumber) override public {
        myFavoriteNumber = _newNumber + 5;
    }
}