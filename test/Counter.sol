// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Counter - A simple counter contract for testing
contract Counter {
    uint256 public count;

    event CountChanged(uint256 newCount);

    constructor() {
        count = 0;
    }

    function increment() public {
        count += 1;
        emit CountChanged(count);
    }

    function decrement() public {
        require(count > 0, "Counter: cannot decrement below zero");
        count -= 1;
        emit CountChanged(count);
    }

    function setCount(uint256 _count) public {
        count = _count;
        emit CountChanged(count);
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}
