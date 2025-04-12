// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Constants {
    // 将不需要修改的变量设置为常量可以节省gas费
    //将变量变为常量必须要加constant关键字
    // 常量命名为大写加下划线
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MY_UINT = 123;
}

contract Var{
    address public MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}

