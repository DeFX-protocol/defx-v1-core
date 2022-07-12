// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DefxToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Defx Token", "DEFX") {
        _mint(msg.sender, initialSupply);
    }

    function burn(uint amount) public {
        _burn(msg.sender, amount);
    }

    function burnAll() public {
        _burn(msg.sender, balanceOf(msg.sender));
    }

}