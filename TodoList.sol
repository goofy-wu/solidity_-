// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TodoList {
    struct Todo{
        string text; // 代办事项
        bool completed; //代办完成状态
    }

    //创建数组，存放代办事情列表
    Todo[] public todos;

    //定义方法，创建代办事项
    function create(string calldata _text) external {
        todos.push(Todo({
            text : _text,
            completed : false
        }));
    }

    //定义修改方法，修改代办事项
    function updataText(uint _index, string calldata _text) external {
        todos[_index].text = _text;
        
    }

    //查看代办事项内容
    function get(uint _index) external view returns (string memory, bool){
        Todo memory todo = todos[_index];
        return (todo.text,todo.completed);
    }

    // 修改完成状态
    function toggleCompleted(uint _index) external{
        todos[_index].completed = !todos[_index].completed;
    } 
}
