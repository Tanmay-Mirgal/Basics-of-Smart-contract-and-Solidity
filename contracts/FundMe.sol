//Get the funds from users
//Withdraw the Funds
//Set minimum  funidng in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {
     uint256 public myValue=1;
    function fund() public payable {
        myValue = myValue + 2;
        //allow users to send dollar
        //Have a minimum dollar sent
        //1.How do we send ETH to this contract?
        require(msg.value>1e18,"Didnt send"); // 1e18 = 1ETH = 1000000000000000000 = 1 * 10**18
        //a ton of computation
        //What is revert ?
        //Undo the actions that have been done,and returns back the gas 


    }

    // function withdraw() public {}
}
