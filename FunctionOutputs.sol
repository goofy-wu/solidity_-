// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionOutputs {
    // 返回多个函数
    function returnMany() public pure returns (uint,bool){
        return (1,true);
    }

    //给返回值命名
    function named() public pure returns (uint x, bool b){
        return (1,true);
    }

    //隐式返回
    function assigned() public pure returns (uint x, bool b){
        x = 1;
        b = true;
    }

    //函数调用返回值
    function destructingAssigments() public pure {
        (uint x,bool b) = returnMany();
        (,bool _b) = returnMany(); //只需要给调用一个变量的值
    }
}
