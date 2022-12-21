# Crypto Price Feeds

This project uses hardhat and chainlink data feeds to retrieve the real-time prices for BTC/USD, ETH/USD, GOLD/USD, and DAI/USD. Users can also input a value for any of these currencies and get the equivalent amount in USD.

# Prerequisites

To use this project, you will need the following:

1. Node.js and npm (included with Node.js)
2. Hardhat
3. Chainlink

# QuickStart

```
git clone https://github.com/Patrick-Ehimen/Chainlink-PriceFeeds
cd Chainlink-PriceFeeds
npm install
```

# Usage, Compiling and Deployment to a testnet.

To use this project, follow these steps:

1. Start the Hardhat development environment:
   `npx hardhat`

2. Setup environment variables
   You'll want to set your `GOERLI_RPC_URL` and `PRIVATE_KEY` as environment variables. You can create and add them to a `.env` file.

3. `PRIVATE_KEY`: The private key of your account (like from metamask). NOTE: FOR DEVELOPMENT, PLEASE USE A KEY THAT DOESN'T HAVE ANY REAL FUNDS ASSOCIATED WITH IT.

4. `GOERLI_RPC_URL`: This is url of the goerli testnet node you're working with. You can get setup with one for free from Alchemy

5. Get testnet ETH
   Head over to <a href = "https://faucets.chain.link/">faucets.chain.link</a> and get some tesnet ETH.

6. Compile and deploy the contracts to the Goerli testnet

```npx hardhat compile
npx hardhat run scripts/deploy.js --network goerli
```

---

Here's the address of the deployed contract.
0xfd1B7282C7D457a28B4F3177c6a8b1C7B6D2c20F.
