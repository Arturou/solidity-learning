pragma solidity >=0.7.4;

//How to write a function that accepts ether?

contract AwesomeContract {
   
   mapping(address => uint) public balances;
   address payable wallet;
   
   constructor(address payable _wallet) {
       wallet = _wallet;
   }
   
   // This function is called for all messages sent to this contract, except plain ether transfers.
   fallback() external payable {
       buyToken();
   }
   
   //This function is called for plain ether transfers.
   receive() external payable {
       buyToken();
   }


   function buyToken() public payable{
     //Buy a token 
     balances[msg.sender] += 1;
     
     //Send ether to a wallet
     wallet.transfer(msg.value);
     
   }
}
