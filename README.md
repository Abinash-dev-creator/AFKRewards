# 🛌 AFK Rewards Smart Contract

## Introduction

In an era where constant engagement is the norm, **AFK Rewards** flips the script and celebrates inactivity. Yes, you read that right. This smart contract rewards users for being AFK (Away From Keyboard). Designed for the laziest yet most creative crypto enthusiasts, this project is deployed on the **CoreDAO Testnet** to gamify doing nothing and getting something in return.

Whether you're out gaming, napping, or simply ignoring your wallet, the AFK Rewards Contract works quietly in the background, tracking your absence and converting it into virtual points. It's perfect for users who believe in passive participation and gamified leisure.

---

## 🧠 Project Description

**AFK Rewards** is a smart contract that encourages inactivity on the blockchain by rewarding users based on how long they've been AFK. Once a user registers, the contract timestamps their interaction and tracks the time elapsed until their next claim. The longer the duration, the more points they accumulate.

### Key Concepts:

* **AFK Rate**: Earn 10 points per hour of inactivity
* **Incentive Structure**: Encourages less frequent interaction
* **Zero Stakes**: No tokens are needed to register or earn
* **Fun-first Design**: Ideal for gamers, slackers, and chill-maximalists

---

## 🌐 Deployment Details

This contract has been successfully deployed on the **CoreDAO Testnet**, a blockchain known for its scalability and decentralization. Below are the deployment details for verification and reference.

* **Network**: CoreDAO Testnet
* **Contract Address**: `0x8062Af...0e00D8c1`
* **Deployed By**: `0x5e920dbef6d56f0e574c4f4aa9e44a7133fa8901`
* **Transaction Hash**: `0xed605dad893396b3b2df08efc4fb33bd9e732eb0bd4604ed0d6abeca09238cb7`
* **Block**: `5016022`
* **Date & Time**: `2025-05-26T09:01:00Z`

### 📷 Deployment Confirmation Screenshot

[image](https://github.com/user-attachments/assets/568dbc45-d379-476e-b54f-36cdb6f9f742)


---

## 🔧 How It Works

Once deployed, the contract exposes a few simple functions that allow users to interact with it in a minimal way.

| Function          | Description                                                        |
| ----------------- | ------------------------------------------------------------------ |
| `register()`      | Registers a new user and stores the current timestamp.             |
| `claimRewards()`  | Calculates points earned since last claim and updates user's data. |
| `viewClaimable()` | Returns the amount of points the user can currently claim.         |
| `myStats()`       | Displays the user’s last claim time and total accumulated points.  |

This system runs purely on timestamps and logic, with no actual ERC20 tokens involved (yet).

---

## 🔮 Use Case: Lazy Gamers and Idle Dreamers

This smart contract is ideal for:

* **Gamers** who spend more time playing and less on checking wallets
* **Crypto experimenters** interested in testing new incentive mechanisms
* **DAO members** wanting passive contributions
* **Anyone tired of engagement farming**

The goal is to turn inactivity into a fun mechanic that could be expanded with tokens, NFTs, or social integrations later on.

---

## 💪 Getting Started

### Prerequisites:

* MetaMask wallet connected to CoreDAO Testnet
* Remix IDE or any Web3 frontend (optional)

### Steps:

1. Deploy the contract using Remix or Hardhat.
2. Call `register()` to register your wallet.
3. Go AFK and do anything else for a few hours.
4. Call `claimRewards()` to receive AFK points.
5. Use `viewClaimable()` and `myStats()` to monitor your progress.

---

## 🧪 Advanced Features (Future Scope)

The initial version is tokenless, but future upgrades may include:

* **ERC20-based token rewards**
* **NFT trophies** for longest AFK durations
* **Leaderboard** for top AFKers
* **Mobile app notifications** when max claimable reached
* **Gamified Discord Bot** to track community-wide AFK stats

---

## 📜 License

MIT License. Use it, fork it, break it, improve it.

---

## 💖 Credits

Built with pure laziness and creativity by a gamer for gamers. If you enjoyed being rewarded for being inactive, spread the word and help decentralize relaxation.

> Because doing nothing should finally pay off.
