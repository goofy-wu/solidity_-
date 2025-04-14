// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Enum {
    // 布尔值只能记录两种状态，如果想记录多种状态就可以用枚举
    // 枚举类型可以使一个变量有多种状态
    enum Status{
        // 定义状态名称
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    // 把以上状态定义到状态变量中
    Status public status;

    // 定义结构体
    struct Order{
        address buyer;
        Status status;
    }

    //用结构体类型定义数组
    Order[] public order;

    // 定义一个函数，针对状态类型取值
    function get() view external  returns (Status){
        //返回的是当前状态变量所在的索引
        return status; 
    }
    // 设置枚举类型的状态变量
    function set(Status _status) external {
        status = _status;
    }

    // 修改状态变量为具体的某个值
    function ship() external {
        status = Status.Shipped;
    }

    // 恢复枚举状态成为默认值
    function reset() external {
        delete status;
    }
}
