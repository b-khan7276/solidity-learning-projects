// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

contract Storage {

    uint256 favnumber;
    bool favbool;

    struct People{
        uint256 favnumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nametoFavnumber;

    function store(uint256 _favnumber) public{
        favnumber = _favnumber;
    }
    function addPeron(string memory _name, uint256 _favnumber) public{
        
        people.push(People(_favnumber, _name));
        nametoFavnumber[_name] = _favnumber;

    }


}
