# Service Contract

Contract to pay Tellor reporters on Polygon.

## mvp
1. whitelist 10 reporter addresses
2. report function wrapper that checks if reporting address in whitelist, makes sure they aren't submitting more than once per day, then submits value
3. rewards function --> runs once on certain date, gets all reporter addresses that met the contract conditions (submit once per day for 15 days), divy up the total rewards to all who met conditions, send rewards

## next features
- create new terms function (takes three params: a new time period, new total rewards, new addresses whitelist)

- [ ] pseudo code
- [ ] small mvp example
- [ ] add in more features

# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
