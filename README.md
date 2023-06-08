## JointSavings: An Ethereum-based Smart Contract

JointSavings is a smart contract built on the Ethereum blockchain using the Solidity programming language. The contract facilitates two users to deposit Ether into the contract and withdraw it as per their needs. All the transactions are securely logged on the Ethereum blockchain, ensuring transparency, security, and traceability. The contract is tested on the Ganache local blockchain and implemented using the Remix Integrated Development Environment (IDE), making it a reliable solution for managing joint savings on the blockchain.


### Table of Contents
- [Technologies](#technologies)
- [Installation](#installation)
- [Instructions](#instructions)
- [Contributors](#contributors)
- [License](#license)

### Technologies

The project incorporates the following technologies:

* [Solidity ^0.8.0](https://soliditylang.org/): Solidity is a statically-typed programming language designed for developing Ethereum smart contracts. It's Ethereum's native language, providing a secure and robust platform for blockchain developers.

* [Remix IDE](https://remix-project.org/): A powerful, open-source tool used for writing Solidity contracts directly from a web browser. Remix IDE facilitates a connected and intuitive environment for developing, testing, and deploying your Solidity code.

* [Ganache](https://trufflesuite.com/ganache/): A personal blockchain used for Ethereum development you can use to deploy contracts, develop applications, and run tests.

### Installation

Please follow the steps outlined below to deploy JointSavingsn smart contracton your local machine:

1. Install Ganache on your machine.
2. Open Remix IDE in your preferred web browser.
3. Download the JointSavings.sol file from this repository and upload it into Remix IDE.
4. Connect Remix IDE with Ganache by setting up the right environment in the Remix settings.

### Instructions

Follow the steps below to interact with the contract:

#### Step 1: Deploying the Contract

To start, we need to deploy the smart contract. With the Remix IDE setup and connected to Ganache, you can initiate deployment. The process involves connecting Remix IDE to a specific Ethereum account on Ganache. For instance, we'll connect to the account with Index 1 in Ganache. This Ethereum address will be used for the deployment of the contract.

Once connected, click on the "Deploy" button in the Remix IDE. Following successful deployment, you'll be able to see the transaction reflecting in Ganache, confirming that the contract is now live and ready for interaction.

![Deploying the Contract](Execution_Results/deploying_contract.gif)

#### Step 2: Setting Up Accounts

With our contract successfully deployed, the next course of action involves determining the accounts that are authorized to withdraw funds from our contract. To accomplish this, we use the setAccounts function within our contract.

For instance, we'll assign `accountOne` and `accountTwo` to accounts from our Ganache instance. We set `accountOne` to be the account at Index 1 and `accountTwo` to be the account at Index 2 in Ganache.

Once accounts are assigned, they have capabilities to perform withdrawal transactions from the contract, acting as our primary accounts that can interact with the contract.

![Setting Up Accounts](Execution_Results/setting_accounts.gif)

#### Step 3: Depositing Funds

Now, we can deposit some Ether into the contract. Execute three transactions with the following amounts and confirm each deposit by calling the contractBalance function:

Transaction 1: Deposit 1 ether (note that the value should be input in wei).
Transaction 2: Deposit 10 ether (also in wei).
Transaction 3: Deposit 5 ether.

![Depositing Funds](Execution_Results/depositing_funds.gif)

#### Step 4: Withdrawing Funds

Now we can test the withdrawal functionality. Make two withdrawals: 5 ether to `accountOne` and 10 ether to `accountTwo`. After each withdrawal, use the `contractBalance` function to confirm the reduction in the contract's balance. In addition, use the `lastToWithdraw` and `lastWithdrawAmount` functions to confirm the last address and amount withdrawn.

![Withdrawing Funds](Execution_Results/withdrawing_funds.gif)

### Contributors

Alexander Likhachev

### License
MIT
