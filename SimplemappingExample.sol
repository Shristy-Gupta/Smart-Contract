pragma solidity ^0.6.0;

contract SimplemappingExample{
    struct  Payment{
        uint amount;
        uint timestamp;
    }
    struct Balance{
        uint totalBalance;
        uint numPayments;
        mapping(uint=>Payment) Payments;
        
    }
    mapping(uint=>bool) public myMap;
    mapping(address=>Balance) public balancereceived;
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function sendmoney() public payable{
        balancereceived[msg.sender].totalBalance+=msg.value;
        Payment memory payment=Payment(msg.value,now);
        balancereceived[msg.sender].Payments[balancereceived[msg.sender].numPayments]=payment;
        balancereceived[msg.sender].numPayments++;
    }
    function withdrawMoney(address payable _to,uint _amount) public{
        require(balancereceived[msg.sender].totalBalance>=_amount,"not enough funds");
        balancereceived[msg.sender].totalBalance-=_amount;
        _to.transfer(_amount);
    }
    function withdrawAllmoney(address payable _to) public{
        uint balanceToSend=balancereceived[msg.sender].totalBalance;
        balancereceived[msg.sender].totalBalance=0;
        _to.transfer(balanceToSend);
    }
    function setValue(uint _index) public{
        myMap[_index]=true;
    }
}
