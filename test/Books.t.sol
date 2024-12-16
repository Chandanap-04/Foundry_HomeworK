// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books books;

    function setUp() public {
        books = new Books("Programming Foundry", "Test Author", 100);
    }

    function test_get_book() public view {
    // Your test logic here
        Books.Book memory book = books.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Test Author");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        books.update_pages(200);
        Books.Book memory updatedBook = books.get_book();
        assertEq(updatedBook.pages, 200);
    }
}
