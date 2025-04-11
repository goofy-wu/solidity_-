// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 全局变量是指不用定义就能显示内容的变量，这些变量往往记录链上上的信息和账户信息
contract GlobalVariables {
    function globalVariable() external view returns (address,uint,uint){
        // 注意此处的view只读取不能更改数据的操作
        address sender =  msg.sender; // 当前调用者的地址
        uint timestamp = block.timestamp; //当前区块时间戳
        uint blockNum = block.number; //当前区块编号
        return (sender,timestamp,blockNum);
    }
}
