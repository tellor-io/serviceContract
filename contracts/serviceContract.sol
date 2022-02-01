//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract serviceContract {
    address private owner;
    // whitelist of allowed reporters
    mapping(address => bool) private reporters;
    // how many days reporters must submit data
    uint256 public reportingPeriod; 

    constructor(uint256 _reportingPeriod) {
        owner = msg.sender;
        reportingPeriod = _reportingPeriod;
        console.log("New owner:", owner);
        console.log("Reporting period: %s days", reportingPeriod);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "func caller must be contract owner");
        _;
    }

    function addReporter(address _addr) public onlyOwner {
        reporters[_addr] = true;
    }

    function isReporter(address _addr) public view returns (bool) {
        bool status = reporters[_addr];
        return status;
    }

    function howLongReportPeriod() public view returns (uint256) {
        return reportingPeriod;
    }

    function setReportingPeriod(uint256 _reportingPeriod) public {
        console.log("Changing reporting period from %s to %s days", reportingPeriod, _reportingPeriod);
        reportingPeriod = _reportingPeriod;
    }


}
