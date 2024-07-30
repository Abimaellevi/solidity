// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.18;  

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{ 
    // uint256 public favoriteNumber
    // tipo de visibilidade
    SimpleStorage[] public listOfsimpleStorageContracts;
    

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract= new SimpleStorage();
        listOfsimpleStorageContracts.push(newSimpleStorageContract);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // adress
        // ABI
        //SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex]
        SimpleStorage mySimpleStorage = SimpleStorage(listOfsimpleStorageContracts[_simpleStorageIndex]);
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();

    }

}