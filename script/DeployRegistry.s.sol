// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Registry.sol";

contract DeployRegistry is Script {
    function run() external {
        vm.startBroadcast();
        new Registry();
        vm.stopBroadcast();
    }
}
