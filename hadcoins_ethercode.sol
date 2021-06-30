//Add coin ICO
pragma solidity  ^0.5.0;
contract hadcoin_ico{
    // Maximum number of hadcoins that is available
    uint public max_hadcoins=1000000;
    //had coins conversion rate;
    uint public usd_to_hadcoins=1000;
    // total number of hadcoins bought by investors
    uint public total_hadcoins_bought=0;
    //Mapping from the investors address to its equity in hadcoins and usd_to_hadcoins
    mapping(address => uint) equity_hadcoins;
    mapping(address => uint) equity_usd;
    //Checking if and investor can buy equity_hadcoins
    modifier can_buy_hadcoins(uint usd_invested){
        require(usd_invested*usd_to_hadcoins + total_hadcoins_bought<=max_hadcoins);
        //if conditions id true only then the modifier will be linked
        _;
    }
    //Getting the equity in hadcoins investor
    function equity_in_hadcoins(address investor) external view returns(uint){
        return equity_hadcoins[investor];
    }
    //Getting the equity in USD investor
    function equity_in_usd(address investor) external view returns(uint){
        return equity_usd[investor];
    }
    //Buying hadcoins
    function buy_hadcoins(address investor, uint usd_invested) external can_buy_hadcoins(usd_invested){
        uint hadcoins_bought=usd_invested*usd_to_hadcoins;
        equity_hadcoins[investor] += hadcoins_bought;
        equity_usd[investor] = equity_hadcoins[investor]/usd_to_hadcoins;
        total_hadcoins_bought+=hadcoins_bought;
    }
    //Selling hadcoins
    function sell_hadcoins(address investor, uint hadcoins_sold) external{
        equity_hadcoins[investor] -= hadcoins_sold;
        equity_usd[investor] = equity_hadcoins[investor]/usd_to_hadcoins;
        total_hadcoins_bought-=hadcoins_sold;
    }
}
