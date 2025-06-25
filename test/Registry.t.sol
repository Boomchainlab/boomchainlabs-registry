// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/Registry.sol";

contract RegistryTest is Test {
    Registry public registry;

    function setUp() public {
        registry = new Registry();
    }

    function testRegisterAndGet() public {
        bytes32 key = keccak256("TestContract");
        address expected = address(0xBEEF);

        registry.register(key, expected);
        assertEq(registry.get(key), expected);
    }

    function testRegisterZeroAddressReverts() public {
        bytes32 key = keccak256("ZeroTest");
        vm.expectRevert("Invalid address");
        registry.register(key, address(0));
    }
}
