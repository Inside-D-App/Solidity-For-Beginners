// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


contract ControlStructures {

    enum Status { Low, Half, Full } // 0, 1, 2
    
    function getStatus(uint param) public pure returns (Status) {
        if (50 > param) {
            return Status.Low;
        } else if (100 > param) {
            return Status.Half;
        } else {
            return Status.Full;
        }
    } 
}