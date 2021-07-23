
pragma solidity ^0.8.4;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";
contract Allowance is Ownable{
    using SafeMath for uint;
    //Event cannot be listened outside solidity
    event allowance_changed(address indexed _forWho, address indexed _fromwhom, uint _oldamount,uint _newamount);
     mapping(address => uint) public allowance;
    //new modifier that takes allowance and checks if its only onlyOwner
    modifier ownerOrAllowed(uint _amount){
        require(owner()==msg.sender || allowance[msg.sender]>=_amount,"Insufficient balance or You are not the owner");
        
        _;
    }
    function addAllowance(address _who,uint _amount) public onlyOwner{
        emit allowance_changed(_who,msg.sender,allowance[_who],_amount);
        allowance[_who]=_amount;
    }
    function reduceAllowance(address _who, uint _amount) internal {
         emit allowance_changed(_who,msg.sender,allowance[_who], allowance[_who].sub(_amount));
        allowance[_who]=allowance[_who].sub(_amount);
    } 
}
