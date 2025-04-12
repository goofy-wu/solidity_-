// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//函数修改器是一种使复用代码简化的语法
contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPaused(bool _paused) external {
        paused = _paused;
    }

    //定义一个函数修改器
    modifier whenNotPaused(){
        //复用代码
        require(!paused, "paused");
        _; // 代表其他代码将要在哪个位置运行
    }

    //使用函数修改器,要把修改器加在函数定义名称后面
    function inc() external whenNotPaused{
        count += 1;
    }

    function dec() external whenNotPaused{
        count -= 1;
    }


    //定义带参数的修改器
    modifier cap(uint _x){
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }


    //三明治式修改器
    modifier sandwich(){
        count += 10;
        _;
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}
