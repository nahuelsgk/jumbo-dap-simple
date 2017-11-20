pragma solidity ^0.4.11;

import "truffle/DeployedAddresses.sol";
import "truffle/Assert.sol";
import "../contracts/JumboToken.sol";

contract TestJumboToken {
  function testCorrectInitiazalition() {
    JumboToken token = JumboToken(DeployedAddresses.JumboToken());
    //From ERC20Basic, as it's public has its own getters.
    uint256 totalSupply    = token.totalSupply();
    uint256 expectedSupply = 12000;
    Assert.equal(expectedSupply, totalSupply, "Initial total supply is wrong!");
  }
}
