// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// JointSavings contract definition
contract JointSavings {
    // state variables
    address payable public accountOne;
    address payable public accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;

    // Function to withdraw amount by a recipient
    function withdraw(uint amount, address payable recipient) public {
        // Check if the recipient is valid
        require(
            recipient == accountOne || recipient == accountTwo,
            "You don't own this account!"
        );

        // Check if the contract has sufficient balance
        require(
            contractBalance >= amount,
            "Account has insufficient funds!"
        );

        // Update lastToWithdraw if a different account makes withdrawal
        if (lastToWithdraw != recipient) {
            lastToWithdraw = recipient;
        }

        // Transfer the amount
        recipient.transfer(amount);

        // Update the last withdrawn amount
        lastWithdrawAmount = amount;

        // Update the contract balance
        contractBalance = address(this).balance;
    }

    // Function to deposit funds into the contract
    function deposit() public payable {
        // Update the contract balance
        contractBalance = address(this).balance;
    }

    // Function to set the accounts
    function setAccounts(
        address payable account1, 
        address payable account2
    ) public {
        // Update the accounts
        accountOne = account1;
        accountTwo = account2;
    }

    // Fallback function
    fallback() external payable {
        // fallback function can remain empty
    }

    // Ether transfer without data calls this function
    receive() external payable {
        // Update the contract balance
        contractBalance += msg.value;
    }
}