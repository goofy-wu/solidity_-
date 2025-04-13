// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Array {
    //定义动态数组并赋予默认值
    uint[] public nums = [1,2,3];
    //定义定长数组
    uint[3] public numsFixed = [4,5,6];

    //定义方法实现数组操作
    function examples() external {
        nums.push(4); // push方法：向动态数组尾部推入数据，定长数组不能采用push方法
        uint x =  nums[1]; //通过索引访问数组的元素
        nums[2] = 777; // 通过索引修改数组中的元素
        delete nums[1]; // 通过索引删除数组中的元素,但是不会修改长度，只会把索引为1的元素变成0
        nums.pop(); // pop方法：从动态数组尾部弹出数据，从而修改数组长度
        uint len = nums.length; //获取数组长度
    

        // 在内存中创建一个数组，内存中局部变量只能定义定长数组，动态数组只能存在状态变量中
        //内存数组不能使用 pop()、push()方法，因为会改变内存长度
        uint[] memory a = new uint[](5);
        a[1] = 123;
    } 

    //返回所有数组
    function returnArray() external view returns (uint[] memory) {
        return nums;
    }
}
