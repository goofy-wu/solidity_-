// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IfElse {
    //example 多分支，支持复杂判断
    function example(uint _x) external pure returns (uint){
        if (_x < 10) {
            return 1;
        }else if (_x >20){
            return 2;
        }
        return 3;
    }

    // ternary 单条件二选一，仅限简单逻辑
    function ternary(uint _x) external pure returns (uint){
        //三元运算符
        return _x < 10 ? 1 : 2;
    }
}
