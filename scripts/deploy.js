const { ethers } = require("hardhat");
const hre = require("hardhat");

async function main() {
  const PriceFeedsFactory = await ethers.getContractFactory("PriceFeeds");
  console.log("Deploying contract...");

  const priceFeeds = await PriceFeedsFactory.deploy();
  await priceFeeds.deployed();

  console.log(`Deployed contract to: ${priceFeeds.address}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
