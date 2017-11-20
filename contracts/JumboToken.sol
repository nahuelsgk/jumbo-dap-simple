pragma solidity ^0.4.4;

import "zeppelin-solidity/contracts/token/StandardToken.sol";

contract JumboToken is StandardToken{
  string public name         = 'JumboToken';
  string public symbol       = 'JB';
  uint public decimals       = 18;
  uint public INITIAL_SUPPLY = 12000;

  function JumboToken() {
    totalSupply          = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
