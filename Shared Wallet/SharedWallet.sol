pragma solidity ^0.8.4;
import "./Allowance.sol";


contract SimpleWallet is Allowance{
  
    event MoneySent(address indexed _beneficiary, uint _amount);
    event MoneyReceived(address indexed _from, uint _amount);
    uint public _balanceamount;
    function withdrawMoney(address payable _to, uint _amount) public ownerOrAllowed(_amount){
        require(_amount<=address(this).balance,"Insufficient Balance");
        if(owner()!=msg.sender){
            reduceAllowance(msg.sender,_amount);
        }
        emit MoneySent(_to,_amount);
        _to.transfer(_amount);
         _balanceamount=address(this).balance;
    }
    function renounceOwnership() public override onlyOwner{
        revert("Cannot renounce ownership!");
    }
    receive () external payable{
        _balanceamount=msg.value;
        emit MoneyReceived(msg.sender,msg.value);
    }
}
