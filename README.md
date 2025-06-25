# 🔗 Boomchainlabs Registry

[![CI](https://github.com/Boomchainlab/boomchainlabs-registry/actions/workflows/ci-deploy.yml/badge.svg)](https://github.com/Boomchainlab/boomchainlabs-registry/actions/workflows/ci-deploy.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Solidity Version](https://img.shields.io/badge/Solidity-0.8.20-blue.svg)](https://soliditylang.org/)
[![Docs](https://img.shields.io/badge/docs-view-blue)](https://github.com/Boomchainlab/boomchainlabs-registry#documentation)
![Build](https://img.shields.io/github/actions/workflow/status/Boomchainlab/boomchainlabs-registry/ci-deploy.yml?branch=main)
![Powered by Foundry](https://img.shields.io/badge/Foundry-tested-blue)

> A decentralized, modular, and upgradeable smart contract registry maintained by [Boomchainlab](https://github.com/Boomchainlab).

---

## 📘 Overview

The **Boomchainlabs Registry** provides an on-chain mapping for smart contract discoverability across modules, systems, and deployments. It supports plug-and-play registry patterns for multi-chain apps, proxies, governance modules, and DAO architectures.

---

## 📦 Features

- 🔐 Secure registration of contract addresses
- 📡 On-chain discovery by contract name (hash-based)
- 🔄 Upgrade-friendly and DAO-integrable
- ⚙️ Built with [Foundry](https://book.getfoundry.sh/) and CI-ready
- ✅ Verified with Etherscan (if secrets are provided)

---

## 📁 Contract Structure

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Registry {
    mapping(bytes32 => address) private _registry;

    function register(bytes32 name, address addr) external {
        require(addr != address(0), "Invalid address");
        _registry[name] = addr;
    }

    function get(bytes32 name) external view returns (address) {
        return _registry[name];
    }
}

🚀 Getting Started

🧰 Prerequisites
	•	Foundry
	•	GitHub secrets set:
	•	PRIVATE_KEY
	•	RPC_URL
	•	ETHERSCAN_API_KEY (optional)
🔧 Install
git clone https://github.com/Boomchainlab/boomchainlabs-registry.git
cd boomchainlabs-registry
forge install

🔨 Build & Test
forge build
forge test --gas-report
🛠 Deployment
To deploy via the CI pipeline or locally
forge script script/DeployRegistry.s.sol:DeployRegistry \
  --rpc-url $RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast \
  --verify \
  --etherscan-api-key $ETHERSCAN_API_KEY \
  --chain-id 8453

🧪 CI/CD

This repository uses GitHub Actions with a ci-deploy.yml workflow to:
	•	✅ Run forge test and gas reports
	•	🔁 Broadcast to Base or other EVM chains
	•	🔎 Verify contracts on Etherscan

⸻

📄 License

This project is licensed under the MIT License.

⸻

🧭 Documentation

Explore full documentation inside the docs/ folder or directly from the source files.

⸻

🙌 Contribute

Pull requests and forks are welcome. Please submit a GitHub Issue to propose major changes.

⸻

✨ Powered By
	•	Foundry
	•	GitHub Actions
	•	Base

Build decentralized registries the modular way — Boomchainlab 🚀
