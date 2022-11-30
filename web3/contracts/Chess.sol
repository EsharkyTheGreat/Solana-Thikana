// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

// contract Chess is ERC1155, Ownable, ERC1155Supply {
contract Chess is ERC1155 {
    struct Game {
        uint256 gameid;
        address player1;
        address player2;
        bool finished;
        uint8 owner;
    }
    Game[] public GamesList;

    uint256 next_game_index;

    event GameStarted(address p1, address p2);

    constructor() ERC1155("") {
        next_game_index = 0;
    }

    function createGame(address p1, address p2) public returns (uint256) {
        GamesList.push(
            Game(next_game_index, address(p1), address(p2), false, 0)
        );
        next_game_index += 1;
        emit GameStarted(address(p1), address(p2));
        return next_game_index - 1;
    }
    // function playMove()
}
