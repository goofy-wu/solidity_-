// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 制作一个管理员权限的合约里面包含
// state variables: 静态合约
// global variables：全局变量
// function modifier: 函数修改器
// function：函数
// error handling：错误控制

contract Ownable {
    //定义状态变量，用于存储合约管理员的地址
    address public owner;

    //定义构造函数，将部署合约的地址赋值给owner
    constructor(){
        owner = msg.sender;
    }

    //定义函数修改器
    modifier onlyOwner() {
        //确认调用者地址等于owner,否则报错
        require(msg.sender == owner, "not owner");
        _;
    }

    //考虑owner所有权是否可以替换给别人
    //制作一个设置owner方法
    //首先我们要传入一个新的_newOwner地址
    function setOwner(address _newOwner) external onlyOwner {
        //确认我们传入的新地址不能是空地址
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner; // 将新地址赋值给owner
    }
    
    function onlyOwnerCanCallThisFunc() external onlyOwner{
        // ...
    }

    function anyOneCanCall() external {
        //...
    }
}
