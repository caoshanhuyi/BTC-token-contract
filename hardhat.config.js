require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  paths: {
    sources: "./contracts"
  },
  networks: {
    optimism: {
      url: `https://sepolia.optimism.io`,
      accounts: {
        mnemonic: ""
      }
    },
    base: {
      url: `https://sepolia.base.org`,
      accounts: {
        mnemonic: ""
      }
    },
  },
};