// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16;

import "./Token.sol";

contract EthSwap {
    string public name = "EthSwap Instant Exchange";
    Token public token;
    uint256 public rate = 100;

    constructor(Token _token) public {
        token = _token;
    }

    function buyTokens() public payable {
        rate;
        uint256 tokenAmount = msg.value * rate;
        token.transfer(msg.sender, tokenAmount);
    }
}
