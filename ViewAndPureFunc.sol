// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ViewAndPureFunctions{
    uint public num;
    // 读取链上的信息就必须用view关键字
    function viewFunc() external view returns (uint) {
        return num;
    }

    // pure函数不会读链上信息，只有局部变量或者啥都没有
    function pureFunc() external pure returns (uint) {
        return 1;
    }

    // view函数的例子
    function addToNum(uint x) external view returns (uint) {
        return num + x;
    } 

    //pure函数例子
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

}
