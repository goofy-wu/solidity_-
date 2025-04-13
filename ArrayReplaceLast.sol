// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//通过替换方式删除数组元素，但是会打乱数组顺序
//原理是，通过用数组最后一个元素跟被删除元素替换
contract ArrayReplaceLast {
    uint[] public arr;
    // [1,2,3,4] -- remove(1) --> [1,4,3]
    // [1,4,3] -- remove(2) --> [1,4]

    function remove(uint _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() external {
        arr = [1,2,3,4];
        remove(1);
        
        //[1,4,3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        //[1,4]
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr.length == 2);
    }
}
