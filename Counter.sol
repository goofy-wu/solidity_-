// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter{
    //定义一个状态变量作为计数器计算对象
    uint public count;

    //创建一个自加函数，因为不是读取所以不用加view关键字。
    // external 表示只能从外部调用
    function inc() external {
        count += 1;
    }

    //定义一个自减函数
    function dec() external {
        count -= 1;
    }

}
