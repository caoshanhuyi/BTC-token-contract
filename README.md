### Project title
BTC token (ERC-20)

### Team members
- @caoshanhuyi

### Project Overview
BTC token contract

### Run-book
1. Install deps, compile, depoly
```shell
- npm install
- npx hardhat compile
npx hardhat run deploy.js --network optimism
npx hardhat run deploy.js --network base
```
2. Got contract address on Optimism and Base, then give `BTC-bridge-contract`, which can call these contract to transfer token to users.
    - Optimism - Sepolia: 0x249A61C6b439c0e5feE8164292D86Da6b5f6D809

    - Base - Sepolia: 0x249A61C6b439c0e5feE8164292D86Da6b5f6D809
3. Change manager for BTC token contract. (BTC bridge have permission to transfer)
```shell
node auth.js optimism

node auth.js base
```

### Resources Used
- hardhat
- @openzeppelin
- @truffle/hdwallet-provider
- web3.js
### Challenges Faced
My biggest challenges is I have no more time to write a beautiful UI
### What We Learned
Using IBC is a good idea for Ethereum ecosystem
### Future Improvements
In the future, I hope that the official can deploy Relayers in all chains of the Ethereum ecosystem so that I can deploy contracts in all chains, allowing a BTC to move across every chain in the Ethereum ecosystem.

### Proof
Optimism tx hash: https://optimism-sepolia.blockscout.com/tx/0x7991fb9c21a782cf8bdd1144a38dd2d7d4e8fd55632537d2ced8bd52b6ced16b?tab=index
Base tx hash: https://base-sepolia.blockscout.com/tx/0xf3ca2c904dcc657cf77ded8c2766c5eaa4dcec568d0c44f4c392024eb89777a7?tab=index


### PortAddress
Op: 0x5ac7f4653D582c56FE97D145c0C1c5B87FcA27f9
Base: 0x99CCfb7f7A41c917CA4243126B9AF34Ef9b1EacF
 
### Licence
[Apache 2.0](LICENSE)

