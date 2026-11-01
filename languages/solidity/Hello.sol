// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Hello {
  string public message = "Hello from Solidity";
  function setMessage(string calldata nextMessage) external { message = nextMessage; }
}
