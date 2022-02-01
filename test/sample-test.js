const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("serviceContract", function () {
  it("Testing service contract", async function () {
    // test vars
    let days = 10;
    let newDays = 20;

    // deploy
    const serviceContract = await ethers.getContractFactory("serviceContract");
    const testContract = await serviceContract.deploy(days);
    await testContract.deployed();

    // confirm constructor input
    expect(await testContract.howLongReportPeriod()).to.equal(days);

    // test changing reporting time period
    const setReportingPeriodTx = await testContract.setReportingPeriod(newDays);
    await setReportingPeriodTx.wait();
    expect(await testContract.howLongReportPeriod()).to.equal(newDays);

    // test adding reporter to whitelist
    const addr1 = ethers.Wallet.createRandom()
    const addReporterTx = await testContract.addReporter(addr1.address);
    await addReporterTx.wait()
    expect(await testContract.isReporter(addr1.address)).to.equal(true);
  });
});
