// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract BooksScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        Books books = new Books("Programming Foundry", "Your Name", 100);

        vm.stopBroadcast();
    }
}
