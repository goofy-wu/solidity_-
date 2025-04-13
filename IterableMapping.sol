// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IterableMapping{
    mapping (address => uint) public balances; //余额型映射
    mapping (address => bool) public inserted; //判断地址是否存在
    address[] public keys; // 记录所有存在的地址

    //设置地址函数
    function set(address _key, uint _val) external {
        balances[_key] = _val; //设置余额的值

        //判断已插入的key地址是否已经存在
        if (!inserted[_key]){ //不存在
            inserted[_key] = true; //把key值插入
            keys.push(_key); //把主键推入数组中
        }
    }

    //获取所有地址的长度
    function getSize() external view returns (uint) {
        return keys.length;
    }

    //返回数组中第一个地址余额
    function first() external view returns (uint){
        return balances[keys[0]];
    }

    //获取数组中最后一个地址余额
    function last() external view returns (uint) {
        return balances[keys[keys.length -1]];
    }

    //获取数组中任意地址余额
    function get(uint _i) external view returns (uint){
        return balances[keys[_i]];
    }

}
