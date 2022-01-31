const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("serviceContract", function () {
  it("Sup boi", async function () {
    // constructor args
    let days = 10;
    let newDays = 20;

    const serviceContract = await ethers.getContractFactory("serviceContract");
    const testContract = await serviceContract.deploy(days);
    await testContract.deployed();

    expect(await testContract.howLongReportPeriod()).to.equal(days);

    const setReportingPeriodTx = await testContract.setReportingPeriod(newDays);

    // wait until the transaction is mined
    await setReportingPeriodTx.wait();

    expect(await testContract.howLongReportPeriod()).to.equal(newDays);
  });
});
