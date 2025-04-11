// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ValueTypes{
    bool public b = true; // 定义一个可视范围为公开的布尔类型变量
    uint public u = 123; // 定义一个可视范围为公开的无符号整数类型变量，也就是正整数变量
    int public i = -123; // 定义一个可视范围为公开的整数类型变量
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 定义一个可视范围为公开的地址类型变量
    // 定义一个可视范围为公开的字节类型变量
    bytes32 public b32= 0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa;
}
