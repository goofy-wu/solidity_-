// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//数据的存储位置
//storage ：存储的是状态变量
//memory：存储的是局部变量
//calldata：和memory比较像，但是只能用在输入参数中

contract DataLocations{
    //定义结构体
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping (address => MyStruct) public MyStructs;

    //在函数输入参数中，如果采用数组类型，就必须用memory类型或者calldata类型
    //calldata只能用在输入参数中
    function example(uint[] calldata y, string calldata s) external returns (uint[] memory)  {
        MyStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = MyStructs[msg.sender];
        myStruct.text = "asdf"; // 这样就会修改链上的数据

        //局部变量，不会记录链上，函数调用结束后就消失
        MyStruct memory readOnly = MyStructs[msg.sender];
        readOnly.foo = 123;

        _internal(y);

        uint[] memory memArr = new uint[](3);
        memArr[0] = 123;
        return memArr;
    }

    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }

}
