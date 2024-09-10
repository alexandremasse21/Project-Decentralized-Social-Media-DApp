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


}
