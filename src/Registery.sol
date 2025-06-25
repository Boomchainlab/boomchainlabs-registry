// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Boomchainlabs Registry
/// @notice On-chain registry for smart contract addresses
contract Registry {
    mapping(bytes32 => address) private _registry;

    /// @notice Register a contract address under a given key
    /// @param name The hashed key (use keccak256("MyContractName"))
    /// @param addr The contract address to register
    function register(bytes32 name, address addr) external {
        require(addr != address(0), "Invalid address");
        _registry[name] = addr;
    }

    /// @notice Get a contract address by name
    /// @param name The hashed key
    /// @return Registered contract address
    function get(bytes32 name) external view returns (address) {
        return _registry[name];
    }
}
