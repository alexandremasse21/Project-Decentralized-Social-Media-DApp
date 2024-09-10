// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Metacircle {
    // Struct to represent a user 
    struct User {
        address userAddress;
        string username;
        string bio;
    }
    
    // Struct to represent a post
    struct Post {
        uint postId;
        address author;
        string content;
        uint256 likes;
        mapping(address => bool) likedBy;
        uint[] commentsIds;
    }

    // Struct to represent a comment
    struct Comment {
        uint commentId;
        string authorUsername;
        uint postId;
        string content;
    }

    mapping(address => User) public users;
    mapping(uint => Post) public posts;
    mapping(uint => Comment) public comments;

    uint public postCount;
    uint public commentCount;

    // User registration
    function createUser(string memory _username, string memory _bio) public {
        require(bytes(users[msg.sender].username).length == 0, "User already exists.");
        users[msg.sender] = User(msg.sender, _username, _bio);
    }

    // Function to get the username from an account address
    function getUsername(address _userAddress) public view returns(string memory) {
        require(bytes(users[_userAddress].username).length != 0, "User does not exists.");
        return users[_userAddress].username;
    }

}
