// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

contract Storage {

    // STRUCT

    uint256 favnumber;
    struct People{
        uint256 favnumber;
        string name;
    } 

   /* 
   => CREATING ONE PERSON
    People public person = People({favnumber:2, name:"Patrik"}); 
    */

// Adding people to an array 

People[] public people;

 function addPerson(string memory _name, uint256 _favnumber) public{

 /*    people.push(People({favnumber: _favnumber, name: _name}));     
    OR */
    people.push(People(_favnumber, _name));    
     
 }
}
