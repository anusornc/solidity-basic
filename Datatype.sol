// กำหนด license identifier และ version ของ Solidity ที่ใช้
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// สร้าง contract ชื่อ DataTypeFunctions
contract DataType {
    // กำหนดตัวแปรแบบ private เพื่อไม่ให้สามารถเข้าถึงได้โดยตรงจากนอก contract
    bool private isActive;
    int256 private negativeNumber;
    uint256 private positiveNumber;
    address private userAddress;
    bytes32 private fixedData;
    string private message;
    uint256[] private numbersArray;

    // กำหนดฟังก์ชันเพื่อตั้งค่า isActive และเรียกดูค่าด้วย isActive
    function setActive(bool _isActive) public {
        isActive = _isActive;
    }
    
    function getActive() public view returns (bool) {
        return isActive;
    }

    // ฟังก์ชันเพื่อตั้งค่าและเรียกดูตัวเลขเชิงลบ (int256)
    function setNegativeNumber(int256 _negativeNumber) public {
        negativeNumber = _negativeNumber;
    }

    function getNegativeNumber() public view returns (int256) {
        return negativeNumber;
    }

    // ฟังก์ชันเพื่อตั้งค่าและเรียกดูตัวเลขเชิงบวก (uint256)
    function setPositiveNumber(uint256 _positiveNumber) public {
        positiveNumber = _positiveNumber;
    }

    function getPositiveNumber() public view returns (uint256) {
        return positiveNumber;
    }

    // ฟังก์ชันเพื่อตั้งค่าและเรียกดูที่อยู่ของผู้ใช้ (address)
    function setUserAddress(address _address) public {
        userAddress = _address;
    }

    function getUserAddress() public view returns (address) {
        return userAddress;
    }

    // ฟังก์ชันเพื่อตั้งค่าและเรียกดูข้อมูลแบบ fixed-size byte array (bytes32)
    function setFixedData(bytes32 _data) public {
        fixedData = _data;
    }

    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }

    // ฟังก์ชันเพื่อตั้งค่าและเรียกดูข้อความ (string)
    function setMessage(string memory _message) public {
        message = _message;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    // ฟังก์ชันเพื่อเพิ่มตัวเลขใน array และเรียกดูตัวเลขจาก index ที่กำหนด
    function addNumber(uint256 _number) public {
        numbersArray.push(_number);
    }

    function getNumber(uint256 index) public view returns (uint256) {
        require(index < numbersArray.length, "Index out of bounds");
        return numbersArray[index];
    }
}
