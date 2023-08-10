// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

    // 1. Function Declaration
    // - name
    // - parameters
    // - visibility
    // - read-only (optional)
    // - return type (optional)

    // 2. Function Body
    // - define logic

    // 3. Function Invocation
    // - call the function

contract SolidityFunctions {

    uint256 public value;

    function addToValue(uint256 valToAdd) public {
        value += valToAdd;
    }

    function subFromValue(uint256 valToSub) public {
        value -= valToSub;
    }

    function addition(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
     

}