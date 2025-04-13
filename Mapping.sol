// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    //声明一个映射
    mapping (address => uint) public balances; // 地址映射uint类型，就是一种记账型
    mapping (address => mapping (address => bool)) public isFriend; //嵌套映射

    function examples() external {
        //给映射设置数据
        balances[msg.sender] = 123;
        //获取余额
        uint bal = balances[msg.sender];
        //获取一个没有定义地址的值,默认值为uint类型默认值
        uint bal2 = balances[address(1)]; // 0

        //修改值
        balances[msg.sender] += 456; // 123 + 456

        //删除数据
        delete balances[msg.sender]; // 返回默认值 0

        //嵌套式映射定义
        // 第一个中括号是当前调用合约的外部账户地址
        //第二个中括号是当前合约地址
        isFriend[msg.sender][address(this)] = true; //映射这两个账户地址是否存在关系
    }

}
