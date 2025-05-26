// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AFKRewards {
    struct UserData {
        uint256 lastClaim;
        uint256 totalPoints;
    }

    mapping(address => UserData) public users;

    uint256 public afkRatePerHour = 10; // Points per hour of AFK

    event Registered(address user);
    event Claimed(address user, uint256 pointsEarned, uint256 timestamp);

    modifier isRegistered() {
        require(users[msg.sender].lastClaim != 0, "Not registered");
        _;
    }

    function register() external {
        require(users[msg.sender].lastClaim == 0, "Already registered");
        users[msg.sender] = UserData(block.timestamp, 0);
        emit Registered(msg.sender);
    }

    function claimRewards() external isRegistered {
        UserData storage user = users[msg.sender];

        uint256 timePassed = block.timestamp - user.lastClaim;
        require(timePassed >= 1 hours, "Stay AFK longer!");

        uint256 hoursAFK = timePassed / 1 hours;
        uint256 reward = hoursAFK * afkRatePerHour;

        user.totalPoints += reward;
        user.lastClaim = block.timestamp;

        emit Claimed(msg.sender, reward, block.timestamp);
    }

    function viewClaimable() external view isRegistered returns (uint256) {
        uint256 timePassed = block.timestamp - users[msg.sender].lastClaim;
        uint256 hoursAFK = timePassed / 1 hours;
        return hoursAFK * afkRatePerHour;
    }

    function myStats() external view returns (uint256 lastClaim, uint256 totalPoints) {
        UserData memory u = users[msg.sender];
        return (u.lastClaim, u.totalPoints);
    }
}
