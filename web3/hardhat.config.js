require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    mine: {
      url: "http://172.17.128.1:7545",
      accounts: ["7e292b65d7778892c91747e4c29795851051544a25b52035eb9be849f7f37cf0"]
    }
  }
};
