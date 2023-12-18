// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.22;

import "openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MikToken is ERC20 {
    
    constructor(uint initialSupply) ERC20("MikToken","MIK"){
        _mint(msg.sender, initialSupply);
    }

}
