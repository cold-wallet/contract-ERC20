// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LZ v2, pinned commit
import { OFTAdapter } from "https://raw.githubusercontent.com/LayerZero-Labs/LayerZero-v2/200cda254120375f40ed0a7e89931afb897b8891/packages/layerzero-v2/evm/oapp/contracts/oft/OFTAdapter.sol";

/// @title CWT OFT Adapter (Ethereum) — locks canonical ERC-20 and bridges via LZ v2
contract CwtOFTAdapter is OFTAdapter {
    /// @param token      canonical CWT (ERC-20) on Ethereum
    /// @param lzEndpoint LayerZero EndpointV2 (Ethereum)
    /// @param owner_     contract owner (your Ethereum Safe)
    constructor(address token, address lzEndpoint, address owner_)
    OFTAdapter(token, lzEndpoint, owner_)
    {}
}
