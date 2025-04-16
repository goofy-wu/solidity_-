// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//事件
//事件是记录当前智能合约运行的方法，但是并不记录在状态变量中，而是会体现在区块链浏览器上

contract Event{
    //声明事件
    event Log(string message, uint val);

    //在事件类型之后规定索引
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log("foo", 123);
        emit IndexedLog(msg.sender, 456);
    }

    //模拟a点到b点发送消息
    event Message(address indexed _from, address indexed _to, string message);
    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}
