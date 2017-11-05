pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract HODL is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function HODL(address _owner)  UpgradeableToken(_owner) {
    name = "HODL";
    symbol = "HDL";
    totalSupply = 90000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}