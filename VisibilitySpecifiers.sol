// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VisibilitySpecifiers {  
    //  private
    //  internal
    //  external
    //  public 

    //  state variables
    //  function declarition

    //  view
    //  pure

    uint internal age = 30;
    uint private class = 1;

    function pureFunc() public pure returns (uint) {
        return 4;
    }

    function getAge() internal view returns (uint) {
        return age;
    }

    function getClass() internal view returns (uint) {
        return class;
    }

    function getAgePublic() public view returns (uint) {
        return age;
    }

    function getAgePublicFunc() internal view returns (uint) {
        return getAgePublic();
    }

    function getClassExternal() external view returns (uint) {
        return class;
    }

    // function getClassExternalFunc() external view returns (uint) {
    //     return getClassExternal();
    // }
}

contract Visibility2 is VisibilitySpecifiers {

    function getAge2() internal view returns (uint) {
        return age;
    }

    function getClass2() internal view returns (uint) {
        return getClass();
    }

    function getAgePublic2() public view returns (uint) {
        return getAgePublic();
    }
}

contract Visibility3 {
    VisibilitySpecifiers contr;

    function getClassExternal2() external view returns (uint) {
        return contr.getClassExternal();
    }

    // function getClass3() internal view returns (uint) {
    //     return contr.getClass();
    // }

    function getAgePublic3() public view returns (uint) {
        return contr.getAgePublic();
    }


}