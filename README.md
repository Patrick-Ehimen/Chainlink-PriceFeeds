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
