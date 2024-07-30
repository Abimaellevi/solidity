// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating our version

contract SimpleStorage {

    uint256 myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;

    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) virtual public {
        myFavoriteNumber = _favoriteNumber;

    }
    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber; 
    }
    // calldata, memory, storage
    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }   
}