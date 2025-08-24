// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title ColdWallet Token (CWT)
/// @notice Fixed-supply ERC-20 token
contract ColdWalletToken is ERC20 {
    constructor(address initialOwner) ERC20("ColdWallet Token", "CWT") {
        require(initialOwner != address(0), "CWT: zero address");
        _mint(initialOwner, 1_000_000_000 * 10 ** decimals());
    }
}
