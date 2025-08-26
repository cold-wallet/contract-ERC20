// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/// @title CWT OFT Adapter (Ethereum) — locks canonical ERC-20 and bridges via LZ v2
contract CwtOFTAdapter is OFTAdapter {
    /// @param _token      canonical CWT (ERC-20) on Ethereum
    /// @param _lzEndpoint LayerZero EndpointV2 (Ethereum)
    /// @param _owner     contract owner
    constructor(
        address _token,
        address _lzEndpoint,
        address _owner
    ) OFTAdapter(_token, _lzEndpoint, _owner) Ownable(_owner) {}
}
