pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";


// mock class using ERC20
contract Points is ERC20 {

   uint  countNumGames;
   uint  GameScore;

   struct Game {
      uint GameNum;
      uint winner;
   }

   Game game;


   mapping (uint256 => Game) Games;

 constructor(address initialAccount, uint256 initialBalance) public {
   _mint(initialAccount, initialBalance);
 }


 function mint(address account, uint256 amount) public {
   _mint(account, amount);
 }

 function burn(address account, uint256 amount) public {
   _burn(account, amount);
 }

 function burnFrom(address account, uint256 amount) public {
   _burnFrom(account, amount);
 }

 function setWinner(uint _winner) public  {
   game.winner = _winner;
   GameScore++;
   countNumGames++;
 }
}