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
        mnemonic: "subway tray panda three indoor eyebrow grit sunset cannon trophy slush wealth"
      }
    },
    base: {
      url: `https://sepolia.base.org`,
      accounts: {
        mnemonic: "subway tray panda three indoor eyebrow grit sunset cannon trophy slush wealth"
      }
    },
  },
};