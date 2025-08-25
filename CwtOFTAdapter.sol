// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { OFTAdapter } from "https://raw.githubusercontent.com/LayerZero-Labs/LayerZero-v2/200cda254120375f40ed0a7e89931afb897b8891/packages/layerzero-v2/evm/oapp/contracts/oft/OFTAdapter.sol";
import { Ownable }    from "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/efdc7cd2d4bcbd22e032907066d2190e97e34939/contracts/access/Ownable.sol";

/// @title CWT OFT Adapter (Ethereum) — локує канонічний ERC-20 і відправляє через LZv2
contract CwtOFTAdapter is OFTAdapter, Ownable {
    /// @param token        адреса канонічного CWT (ERC-20) у Ethereum
    /// @param lzEndpoint   адреса LayerZero EndpointV2 у Ethereum mainnet
    /// @param owner_       власник (рек. multisig Safe у Ethereum)
    constructor(address token, address lzEndpoint, address owner_)
        OFTAdapter(token, lzEndpoint, owner_)
        Ownable(owner_)
    {}
}
