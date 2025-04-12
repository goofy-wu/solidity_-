// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//构造函数是一个特殊函数，它仅能在合约部署时被调用一次，之后就再也不能被调用，一般用来初始化一些变量

contract Constructor {
    address public owner;
    uint public x;

    //定义一个构造函数 关键字是constructor
    constructor(uint _x){
        owner = msg.sender; // 将合约部署者的地址赋值给owner
        x = _x; // 将部署时的变量_x的值赋值给x
    }
}
