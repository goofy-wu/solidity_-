// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract A{
    // 父类方法想要继承重写就要加virtual关键字
    function foo() public pure virtual  returns (string memory){
        return "A";
    }

     function bar() public pure virtual returns (string memory){
        return "A";
    }

    function baz() public pure  returns (string memory){
        return "A";
    }

}

contract B is A{  // is关键字用来指定子类继承父类
    // 子类方法想要继承重写就要加override关键字
      function foo() public pure override   returns (string memory){
        return "B";
    }

     function bar() public pure virtual override  returns (string memory){
        return "B";
    }
   
}

contract C is B{

    function bar() public pure override returns (string memory){
        return "C";
    }
}
