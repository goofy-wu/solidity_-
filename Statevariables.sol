// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Statevariables{
    // 状态变量相当于你把变量写入区块链上，不写修改办法的话将永久保存在链上
    uint public age = 123; // 创建一个状态变量，默认值为1233

    function foo() external{
        // 定义一个局部变量，只有函数调用才会执行
        uint notStateVariable = 456;
    }
}
