// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 通过移动位置删除数组元素
contract ArrayShift {
    uint[] public arr;

    function example() public {
        arr = [1,2,3];
        delete arr[1]; //[1,0,3]

    }
    //通过一个函数实现
    // [1,2,3] -- remove(1) --> [1,3,3] --> [1,3]
    // [1,2,3,4,5,6] -- remove(2) --> [1,2,4,5,6,6] --> [1,2,4,5,6,]
    // [1] -- remove(0) --> [1] --> []
    function remove(uint _index) public {
        //首先验证输入的索引值不能比数组长度大
        require(_index < arr.length, "index out of bounds");

        for (uint i = _index; i < arr.length -1 ; i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    function test() external  {
        arr = [1,2,3,4,5];
        remove(2);   // [1,2,4,5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }

}
