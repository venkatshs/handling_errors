// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleContract {
    address public owner;
    uint256 public value;
    mapping(address => uint256) public balances;

    event ValueSet(uint256 newValue);
    event TokensTransferred(address indexed from, address indexed to, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 newValue) external {
        require(msg.sender == owner, "Only owner can set value");
        value = newValue;
        emit ValueSet(newValue);
    }

    function transfer(address to, uint256 amount) external {
        require(to != address(0), "Can't transfer to the Zero adress");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit TokensTransferred(msg.sender, to, amount);
    }

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        // Declaring assert to make sure that  the state is consistent
        assert(balances[msg.sender] >= amount);

        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function updateOwner(address newOwner) external {
        require(newOwner != address(0), "New owner address can't be zero");
        require(msg.sender == owner, "Only owner can update");

        if (newOwner == address(0)) {
            revert("New owner address can't be zero");
        }

        owner = newOwner;
    }
}

