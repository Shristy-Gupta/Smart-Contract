# Smart-Contract
Solidity code written on Remix IDE: https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null&version=soljson-v0.5.17+commit.d19bba13.js
Deployment done using Ganache and myetherwallet: https://www.trufflesuite.com/ganache  https://github.com/MyEtherWallet/etherwallet/releases/

1) Copy the Remix code in IDE and save
2) Copy the ABI and ByteCode (only the byte code and not the opcode)
3) Open the my ether wallet and Add custom Network Node as shown in following image
![image](https://user-images.githubusercontent.com/26459890/123957296-3d000f00-d9c9-11eb-8c09-9392e9544956.png)
4) In URL and Port use RPC Server address as shown in following image
![image](https://user-images.githubusercontent.com/26459890/123957515-84869b00-d9c9-11eb-9e43-f06110b697ab.png)
5) Go to contracts and deploy the contract
6) Use the Byte code generated from remix, then select the public key option
7) Then use any public key aka ADDRESS from ganache, just press on the key icon and copy the private key in myEtherWallet.com. Deploy it.
8) Now in ganache the TX tag will be incremented by 1 and a block will be added
![image](https://user-images.githubusercontent.com/26459890/123958221-666d6a80-d9ca-11eb-9dc1-a8617d0e1ef9.png)
9) Then go back to Interact with contract as the code is deployed and in contract address paste the same from ganache ( Block 1--> Tx Hash -->Created contract address)
![image](https://user-images.githubusercontent.com/26459890/123958851-29ee3e80-d9cb-11eb-9161-5605ed1d8321.png)
10) Then copy the ABI from Remix ide and paste in myetherwallet ABI textbox
![image](https://user-images.githubusercontent.com/26459890/123959023-543ffc00-d9cb-11eb-8edb-8e9eb27a463e.png)
11) After accessing you can use all the functions and make trasaction and use the address from Ganache to execute any new trasactions


