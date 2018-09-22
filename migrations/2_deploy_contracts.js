var HashFactory = artifacts.require("./HashFactory.sol");

module.exports = function(deployer) {
  deployer.deploy(HashFactory);
};
