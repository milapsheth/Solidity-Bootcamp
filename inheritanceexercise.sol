// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Parent contract
contract Vehicle {
    string public color;

    function setColor(string memory _color) public {
        color = _color;
    }
}

// Child contract Car
contract Car is Vehicle {
    string public brand;

    function setBrand(string memory _brand) public {
        brand = _brand;
    }
}

// Child contract Motorcycle
contract Motorcycle is Vehicle {
    uint public engineSize;

    function setEngineSize(uint256 _engineSize) public {
        engineSize = _engineSize;
    }
}

// Test contract
contract InheritanceTest {
    function testVehicles() public{
        Car car = new Car();
        car.setColor("Red");
        car.setBrand("Toyota");

        Motorcycle motorcycle = new Motorcycle();
        motorcycle.setColor("Blue");
        motorcycle.setEngineSize(500);
        
    }
}
