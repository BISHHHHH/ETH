# MyCustomToken Contract



## Description

- This Solidity smart contract, named "MyCustomToken," is a basic token contract with functions for minting and burning tokens. Below are the key components and functions explained in detail:

- SPDX-License-Identifier: MIT

- This line specifies the license under which the code is released. In this case, it's the MIT License, which is a permissive open-source license.
Solidity Version

- pragma solidity 0.8.18; specifies the version of the Solidity programming language that should be used to compile the contract. In this case, it's version 0.8.18.

### Contract Declaration

- contract MyCustomToken { declares a Solidity contract named "MyCustomToken."


### Public Variables

- string public tokenName = "21BCG1086"; declares a public string variable tokenName with the value "21BCG1086"

- string public tokenSymbol = "BISHAL"; declares a public string variable tokenSymbol with the value "BISHAL."

- uint public totalSupply = 0; declares a public unsigned integer variable totalSupply with an initial value of 0.
Mapping Variable

- mapping(address => uint) public balances; declares a public mapping variable balances that associates Ethereum addresses (represented as address) with unsigned 
integer balances (uint).

### Mint Function

- function mintTokens(address _address, uint _amount) public { defines a function called mintTokens that allows the contract owner to create new tokens and assign them to a specified address.

- address _address is the address to which the tokens will be minted.
- uint _amount is the number of tokens to be minted.
- This function increases the totalSupply and adds _amount tokens to the balance of _address.

### Burn Function

- function burnTokens(address _address, uint _amount) public { defines a function called burnTokens that allows token holders to destroy (burn) a specified number of tokens from their own balance.

- address _address is the address of the token holder who wants to burn tokens.

- uint _amount is the number of tokens to burn.

- This function checks if the token holder has a sufficient balance to burn the specified amount of tokens, and if so, it reduces the totalSupply and deducts the burned tokens from the holder's balance.

- This contract provides a basic structure for a token system, where tokens can be minted by the contract owner and burned by token holders, while maintaining a ledger of token balances for each Ethereum address. It's worth noting that this is a simplified example, and real-world token contracts often include additional features and security measures

## Getting Started

## CODE

//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Sachin {

    // public variables here
    string public tokenName = "21BCG1086";
    string public tokenSymbol = "BISHAL";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mintTokens(address _address, uint _amount) public {
        totalSupply += _amount;
        balances[_address] += _amount;
    }

    // burn function
    function burnTokens(address _address, uint _amount) public {
        require(balances[_address] >= _amount, "Cannot burn more than balance tokens");
        totalSupply -= _amount;
        balances[_address] -= _amount;
    }
}


## Installing 

- To instal the provided Solidity code on Remix IDE with user inputs, you can follow these steps:

- Open Remix IDE: Go to the Remix IDE website (https://remix.ethereum.org/).

- Create a New File: On the Remix IDE interface, create a new Solidity file and paste the provided code into it. You can click on the "+" button in the file explorer on the left side and give the file a name, such as Eth.sol."


## Executing program

Compile the Contract:

- In the Remix IDE, you should see a "Solidity Compiler" tab on the left sidebar.
- Select the version of Solidity (0.8.18) from the dropdown menu to match the pragma statement in your code.
- Click the "Compile Eth.sol" button to compile the contract. Ensure that there are no compilation errors.

  
Deploy the Contract:

- After successful compilation, go to the "Deploy & Run Transactions" tab in Remix IDE.



## Deploy

Deploy the Contract:

- Below the contract code, you should see a section to deploy the contract.
- Click on the "Deploy" button.

Interact with the Contract:

- After deployment, you can interact with the contract using the provided functions: mintTokens and burnTokens.
- Enter the Ethereum address and the amount of tokens you want to mint or burn in the respective input fields.
- Click the "Transact" button to execute the function.


Check Contract State:

You can also check the state of the contract, including the totalSupply and balances of different addresses, by calling the public variables and functions. These will be read-only transactions and do not require gas

# User Input

### Input Values for Minting:


- In the "mintTokens" section, you will see two input fields:
- _address: Enter the Ethereum address to which you want to mint tokens. This should be a valid Ethereum address 
- _amount: Enter the number of tokens you want to mint.


### Execute the Mint Function:

- After entering the values,
- click the "Transact" button to execute the minting function. 


### Check Token Balance:

- To check the updated balance of the address you minted tokens to, you can call the balances mapping using the address as the key. You can do this by entering the address in the "balances" section under your contract and clicking the "Read" button.


### Burn Tokens:

- Similarly, you can burn tokens by calling the burnTokens function.
- In the "Deployed Contracts" section, find the "burnTokens" function in the list of functions under your contract.

 ### Input Values for Burning:

- In the "burnTokens" section, you will see two input fields:
- _address: Enter the Ethereum address that holds the tokens you want to burn.
- _amount: Enter the number of tokens you want to burn.


### Execute the Burn Function:

- After entering the values, click the "Transact" button to execute the burning function. Ensure that you have enough tokens in the specified address to burn; otherwise, it will fail.


### Check Token Balance After Burning:

- You can also check the updated balance of the address after burning tokens by calling the balances mapping as mentioned in step 5.


## Authors

- BISHAL PATRA

- 21BCG1086


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
