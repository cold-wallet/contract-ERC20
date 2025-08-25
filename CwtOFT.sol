// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { OFT } from "https://raw.githubusercontent.com/LayerZero-Labs/LayerZero-v2/200cda254120375f40ed0a7e89931afb897b8891/packages/layerzero-v2/evm/oapp/contracts/oft/OFT.sol";

contract CwtOFT is OFT {
    /// @param lzEndpoint LayerZero EndpointV2 (BSC)
    /// @param owner_     owner (your BSC Safe)
    constructor(address lzEndpoint, address owner_)
    OFT("ColdWallet Token", "CWT", lzEndpoint, owner_)
    {}
}
