require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({path: ".env"});

const PRIVATE_KEY = process.env.PRIVATE_KEY;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.0",
  networks: {
    core_testnet : {
      url: "https://rpc.test.btcs.network",
      accounts: [PRIVATE_KEY], 
    },
  },
};