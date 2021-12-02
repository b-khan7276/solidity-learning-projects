/*  git hub link to this course 
https://github.com/smartcontractkit/full-blockchain-solidity-course-py
 */

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

contract SimpleStorage{

//    VARIABLES IN SOLIDITY 
    /* 
    uint256 favnumber =5;
    bool favbool = false;
    string favstring ="string";
    int256 favint = -5;
    address favaddress = 0x54359874957JKHKJHK;
     */


    uint256 public favnumber;

    function store(uint256 _favnumber) public{

        favnumber = _favnumber;

    }

    // WE USE VIEW AND PURE TO READ THE STATE OF FUNCTION
    /* => if we are reading it mean we are not changing anything in  blockchain and it cause no gas 
       => pure keyword is used to do any kind of maths operations 
    */

    // if we dont set state variable  visibity it will automatically se to internal 

    function retrieve() public view returns(uint256){
        return favnumber;

    }

    

}
