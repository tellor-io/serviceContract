//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract serviceContract {
    address private owner;
    // whitelist of all allowed reporters
    mapping(address => bool) private whitelist;
    // how many days reporters must submit data
    uint256 public reportingPeriod; 

    constructor(uint256 _reportingPeriod) {
        owner = msg.sender;
        console.log("New owner:", owner);
        console.log("Reporting period: %s days", _reportingPeriod);
        reportingPeriod = _reportingPeriod;
    }

    function howLongReportPeriod() public view returns (uint256) {
        return reportingPeriod;
    }

    function setReportingPeriod(uint256 _reportingPeriod) public {
        console.log("Changing reporting period from %s to %s days", reportingPeriod, _reportingPeriod);
        reportingPeriod = _reportingPeriod;
    }

    // function for 
}
