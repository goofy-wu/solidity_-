ocalVariables.sol// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract LocalVariables{
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        //more code
        x += 456;
        f = true;

        // 定义状态变量的值，这时候状态就会改变，在链上的值就会发生变化
        i = 123;
        b = true;
        myAddress = address(1);
    }

}
//橙色按钮代表写入方法
