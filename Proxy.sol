// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//通过合约部署合约
//测试合约1
contract TestContract1 {
    address public owner = msg.sender;

    function setOwner(address _owner) external {
        require(msg.sender == owner, "not the owner");
        owner = _owner;
    }
}

//测试合约2
contract TestContract2 {
    address public owner = msg.sender;
    uint public value = msg.value;
    uint public x;
    uint public y;

    constructor(uint _x, uint _y) payable {
        x = _x;
        y = _y;
    }

}

// 代理合约，通过代理合约去部署上面两个合约
 contract Proxy{
    //声明事件,事件名称首字母要大写
    event Deploy(address);

    //payable 是一个关键修饰符，用于‌允许合约或地址接收以太币（ETH）
    function deploy(bytes memory _code) external payable returns (address addr) {
        //内联汇编
        assembly{
            //create(v, p, n)：以太坊汇编指令，部署新合约。
            // v：发送的 ETH 金额（单位：wei）。
            // p：字节码在内存中的起始位置（指针）。
            // n：字节码长度（字节数）。
            //:= 仅在 assembly{} 块中有效‌，赋值运算
            addr := create(callvalue(), add(_code, 0x20), mload(_code))
        }

        //判断返回的地址不是零地址
        require(addr != address(0), "defile");

        //触发事件
        emit Deploy(addr);
    }

    function execute(address _targer, bytes memory _data)
        external 
        payable 
    {
        (bool success, ) = _targer.call{value: msg.value}(_data);
        require(success , "failed");
    }    
 }

contract Helper{
    function getBytecode1() external pure returns ( bytes memory){
        bytes memory bytecode = type(TestContract1).creationCode;
        return bytecode;
    }

    function getBytecode2(uint _x,uint _y) external pure returns ( bytes memory){
        bytes memory bytecode = type(TestContract2).creationCode;
        return abi.encodePacked(bytecode, abi.encode(_x, _y));
    }

    function getCalldata(address _owner) external pure returns (bytes memory) {
        return abi.encodeWithSignature("setOwner(address)", _owner);
    }
}
