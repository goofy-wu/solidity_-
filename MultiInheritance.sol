// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//多级继承
contract X{
    function foo() public pure virtual  returns (string memory){
        return "X";
    }

     function bar() public pure virtual returns (string memory){
        return "X";
    }

    function x() public pure  returns (string memory){
        return "X";
    }
}

contract Y is X{
    function foo() public pure virtual override   returns (string memory){
        return "X";
    }

    function bar() public pure virtual override  returns (string memory){
        return "X";
    }

    function y() public pure  returns (string memory){
        return "Y";
    }
}

contract Z is X ,Y {
    function foo() public pure  override(X,Y)   returns (string memory){
        return "X";
    }

    function bar() public pure  override(X,Y)  returns (string memory){
        return "X";
    }
}
