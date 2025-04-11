// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionIntro{
    // 定义一个加法函数
    // external ：代表外部函数，智能在外部读取的函数
    // pure   ：不使用存储变量，只能使用外部函数调用时传入参数,不会修改链上结果
    // returns : 返回结果
    // (uint)：返回结果类型
    function add(uint x,uint y) external pure returns (uint){
        return x + y;
    }

    //定义一个减法函数
    function sub(uint x , uint y) external pure returns (uint){
        return x - y;
    }
    
}
