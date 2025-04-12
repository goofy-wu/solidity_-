// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
//require,revert,assert：这三个都是常见的报错控制方法，都具有gas费的退还和状态变量回滚的特性
//自定义错误可以节约gas费
contract Errors {
    function testRequire(uint _i) public pure {
        //逗号签名为表达式，后面为报错信息
        require(_i <= 10 ,"i > 10");
    }

    //revert 不能包含表达式
    function testRevert(uint _i) public pure{
        if (_i > 5){
            revert("i < 5");
        }
    }

    uint public num = 123;
    function testAssert() public view  {
        //断言是不包含报错信息的
        assert(num == 123);
    }

    function foo(uint _i) public {
        num += 1;
        //当num被修改时，判读错误，gas费会被退回
        require(_i < 10);
    }

    //自定义error
    error MyError(address caller, uint i); // 括号可以加入参数，比如地址和变量
    function testCustomError(uint _i) public view {
        if (_i > 10){
            revert(msg.sender, _i);
        } 
    }
}
