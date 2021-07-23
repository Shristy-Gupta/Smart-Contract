# Use Cases
1) chidren getting allowance per day or week or month
2) Employer gives employees allowance for travel
3) Business gives some other business some expense budget.

# Functionality:
1) Deposit, Anyone can deposit money to the shared wallet
2) Withdraw, Owner can withdraw unlimited amount of money from his/her wallet. A non-owner can withdraw depending allowance variable 
3) Change the allowance, This is only restricted to the owner

# How to Deploy
1) Just Use any Environment preferably Javascript VM, Deploy sharewallet file

# SimpleWallet functionality: 
        Events: Moneysent,MoneyReceived
        Function: withdrawMoney (This function sends the amount to the beneficiary, If its the owner, it sends inf amount, if it is a allowance the money will be ducucted based on                   the  wallet balance)
                  renounceOwnership: (This is to override the function used on Ownable.sol)
                  Fallback: (To add balance in the owner account)
                  
# Allowance functionality:
      Events: allowance_changed
      Modifiers: ownerOrAllowed
      Function: addAllowance (This maps the benificiary address with the amount allocated by the owner)
                reduceAllowance (Only the appropriate beneficiary or the msg.sender will be able to make the wothdraw from their wallet, Also the amount gets reduced from their                    wallet)
        
