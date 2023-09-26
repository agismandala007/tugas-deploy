// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Identity {
  uint age = 22;
  string username = "agismandala";
  string private _email = "agis@gmail.com";

  struct Blockchain {
    uint id;
    string name;
  }

  Blockchain[] public blockchain;

  function getEmail() public view returns (string memory) {
    return _email;
  }

  function createBlockchain(uint id, string memory name) public  {
    blockchain.push(Blockchain(id, name));
  }

  function changeEmail(string memory email) public returns (string memory) {
    _email = email;
    return email;
  }
  
}
