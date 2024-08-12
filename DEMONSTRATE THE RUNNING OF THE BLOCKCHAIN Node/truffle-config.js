module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 9545,
      network_id: "5777", // Match any network id
    },
  },

  compilers: {
    solc: {
      version: "^0.8.0", // Specify the Solidity version to use
    },
  },
};
