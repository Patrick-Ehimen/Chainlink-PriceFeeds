// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceFeeds {
    //declaring a state variables of type AggregatorV3Interface
    AggregatorV3Interface internal BTC_USD;
    AggregatorV3Interface internal ETH_USD;
    AggregatorV3Interface internal XAU_USD;
    AggregatorV3Interface internal DAI_USD;

    /**
     * @dev Initializes the Goerli Testnet proxy
     * for each trading pairs
     * */
    constructor() {
        BTC_USD = AggregatorV3Interface(
            0xA39434A63A52E749F02807ae27335515BA4b07F7
        );
        ETH_USD = AggregatorV3Interface(
            0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        );
        XAU_USD = AggregatorV3Interface(
            0x7b219F57a8e9C7303204Af681e9fA69d17ef626f
        );
        DAI_USD = AggregatorV3Interface(
            0x0d79df66BE487753B02D015Fb622DED7f0E9798d
        );
    }

    function getBtcPrice() public view returns (int BTC) {
        (
            ,
            /*uint80 roundID*/ int price /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/,
            ,
            ,

        ) = BTC_USD.latestRoundData();
        //divide the price by 10 ** 8 in order to get price in USD
        BTC = price / 1e18;
        return BTC;
    }

    function getEthPrice() public view returns (int ETH) {
        (, int price, , , ) = ETH_USD.latestRoundData();

        ETH = price / 1e18;
        return ETH;
    }

    function getGoldPrice() public view returns (int XAU) {
        (, int price, , , ) = XAU_USD.latestRoundData();

        XAU = price / 1e18;
        return XAU;
    }

    function getDaiPrice() public view returns (int DAI) {
        (, int price, , , ) = DAI_USD.latestRoundData();

        DAI = price / 1e18;
        return DAI;
    }
}
