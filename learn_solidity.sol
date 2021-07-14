pragma solidity ^0.5.13;
contract basics{
    uint256 public myUnit;
    function setMyUnit(uint _MyUint) public{
       myUnit=_MyUint;
    }
    bool public myBool;
    function setMyBool(bool _MyBool) public{
        myBool=_MyBool;
    }
    uint8 public myuint8;
    function incrementUnit()public{
        myuint8++;
    }
     function decrementUnit()public{
        myuint8--;
    }
    address public myaddress;
    function setaddress(address _address) public{
        myaddress=_address;
    }
    function getBalanceAddress() public view returns(uint){
        return myaddress.balance;
    }
    string public myString='Hello world';
    function setMyString(string memory _mystring) public{
        myString=_mystring;
    }
}
