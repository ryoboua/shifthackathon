pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Mintable.sol";

contract Horse721 is ERC721Full, ERC721Mintable {
    event HorseOwner(address owner);
    address public admin;
    
  constructor() ERC721Full("Horse", "H") ERC721Mintable() public {
    admin = msg.sender;
    mint(msg.sender, 1);
    mint(msg.sender, 2);
    mint(msg.sender, 3);
    mint(msg.sender, 4);
    mint(msg.sender, 5);
    setApprovalForAll(0xedd1d62314f566e7b99ecf4ca445941bc9b4a286, true);
  }
  
  function createHorse(address _to, uint256 _tokenId) public {
      mint(_to, _tokenId);
  }
  function getHorseOwner(uint256 _tokenId) public view returns (address){
      return ownerOf(_tokenId);
  }
  
  function buyHorse(address _to, uint256 _tokenId) {
      transferFrom(admin, _to, _tokenId);
  }
}