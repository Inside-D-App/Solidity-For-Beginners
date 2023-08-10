// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


contract ControlStructuresSwitch {  

    mapping(address => bool) public state;  
    
    function forLoop(address[] memory addressList) public {
        for (uint256 i = 0; i < addressList.length; i++) {
            state[addressList[i]] = true;
        }
    }

    function whileLoop() public pure returns (uint256) {
        // while (condition) {
        //     // code to be executed
        // }
        
        uint256 i;

        while (i < 5) {
            i++;
        }

        return i;
    } 

    function doWhileLoop() public pure returns (uint256) {
        uint256 i = 0;

        do {
           i++;
        } while (i < 5);

        return i;
    } 

    
}