// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract photon {
    // Public variables to store token information
    string public Name;
    string public Abbrv;
    uint public totalSupply = 0;
    mapping(address => uint) public balances;

    // Function to set token name manually
    function setName(string memory _newName) public {
        Name = _newName;
    }

    // Function to set token abbreviation manually
    function setAbbrv(string memory _newAbbrv) public {
        Abbrv = _newAbbrv;
    }

    // Function to mint tokens to specifed address
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Function to burn tokens from a specified address
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
