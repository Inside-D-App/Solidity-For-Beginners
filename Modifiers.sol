// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Modifiers {

    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    modifier onlyOwner(address owner_) {
        require(owner_ == owner, "Not Owner");
        _;
    }

    function func1() external view onlyOwner(msg.sender) returns (uint256) {
        
        return 6;
    }

    function func2() external view onlyOwner(msg.sender) returns (uint256) {
        return 10;
    }    

}