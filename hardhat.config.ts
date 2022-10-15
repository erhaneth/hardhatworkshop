import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    hardhat: {},
  //   goerli: {
  //     url: "",//json-rpc-url alcemy
   //acounts: process.env.PRIVATE_KEY ! == undefined ? [process.env.PRIVATE_KEY] : [],
  }
};

export default config;
