//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyCustomToken {

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