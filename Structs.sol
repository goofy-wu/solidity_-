// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 结构体是能将很多种变量格式打包组合在一起的一种数据格式
contract Structs{
    //定义一种结构体之后就成为一种结构体类型
    struct Car{
        string model; //汽车型号
        uint year; //汽车生产时间
        address owner; //汽车拥有者
    }

    //以汽车为类型定义汽车变量
    Car public car;
    //以结构体类型定义数组
    Car[] public cars;
    //结构体类型定义一个映射，地址映射到汽车结构体
    mapping (address => Car[]) public carsByOwner;

    function examples() external {
        //将数据传入结构体中，第一种写法
        Car memory toyota = Car("Toyota",1990,msg.sender);

        //第二种写法,这样写不用按照顺序定义值
        Car memory lambo = Car({model:"Lamborghini",year: 1980, owner: msg.sender});

        //第三种写法,定义结构体变量
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2017;
        tesla.owner = msg.sender;

        // 将数据推入数组
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        //获取结构体中的值
        //将个变量定义在存储中，这样就可以修改了
        Car storage _car = cars[0];
        //获取某个变量具体的值
        _car.model;
        _car.year;
        _car.owner;

        //修改存储中状态变量的值
        _car.year = 1999;

        //删除，删除后变量的值就会恢复成默认值
        delete _car.owner;

        delete cars[1];


    }

}
