// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructDemo {
    struct Book {
        string name;
        string author;
        uint256 id;
        bool availability;
    }

    Book public book2; // State variable declaration for book2
    Book public book1 = Book("A Little Life", "Hanya Yanagihara", 2, false); // State variable initialization for book1

    // Function to set details for book2
    function setDetails() public {
        book2 = Book("Almond", "Sohn Won-pyung", 1, true);
    }

    // Function to get details of book1
    function getBook1Info() public view returns (string memory, string memory, uint256, bool) {
        return (book1.name, book1.author, book1.id, book1.availability);
    }

    // Function to get details of book2
    function getBook2Details() public view returns (string memory, string memory, uint256, bool) {
        return (book2.name, book2.author, book2.id, book2.availability);
    }
}
