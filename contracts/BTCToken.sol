// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("BTC", "BTC") {
        _mint(msg.sender, 100000000 * (10 ** uint256(decimals())));
    }
}

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BTCToken is ERC20, Ownable {
    address public admin;

    constructor() ERC20("Bitcoin", "BTC") Ownable(msg.sender) {
        _mint(
            0x4095c160E2812E6a0ef0bCE727724c5D9FcC67E1,
            1000000 * 10 ** decimals()
        );
    }

    function changeAdmin(address changedAdmin) public onlyOwner {
        admin = changedAdmin;
    }

    modifier onlyAdmin() {
        require(admin == msg.sender, "only admin can do this");
        _;
    }

    function getAdmin() public view returns (address) {
        return admin;
    }

    function mint(address to, uint256 amount) public onlyAdmin {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public onlyAdmin {
        _burn(from, amount);
    }
}