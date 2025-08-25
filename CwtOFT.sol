// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// ПРИМІТКА: той самий коміт oft-evm v2, але інший контракт
import { OFT } from "https://raw.githubusercontent.com/LayerZero-Labs/LayerZero-v2/200cda254120375f40ed0a7e89931afb897b8891/packages/layerzero-v2/evm/oapp/contracts/oft/OFT.sol";
import { Ownable } from "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/efdc7cd2d4bcbd22e032907066d2190e97e34939/contracts/access/Ownable.sol";

/// @title CWT OFT (BSC) — мінт/бьорн представлення CWT для BSC
contract CwtOFT is OFT, Ownable {
    /// @param lzEndpoint   адреса LayerZero EndpointV2 у BSC mainnet
    /// @param owner_       власник (рек. multisig Safe у BSC)
    constructor(address lzEndpoint, address owner_)
        OFT("ColdWallet Token", "CWT", lzEndpoint, owner_)
        Ownable(owner_)
    {}
}
