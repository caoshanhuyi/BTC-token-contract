const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  const token = await hre.ethers.deployContract("BTCToken");
  await token.waitForDeployment();

  console.log("contract:", token.target);
}

main()