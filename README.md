# Service Contract

Contract to pay Tellor reporters on Polygon.

## mvp
1. whitelist 10 reporter addresses
2. once the reporting period is over, reporters call getReward and provide an array of time stamps of all their reports. That func looks up all the reports given those timestamps, makes sure they met the contract reqs, then sends the reward to them
3. getReward doesn't only gives a set amount if they reported enough, not more
4. rewards function --> runs once on certain date, gets all reporter addresses that met the contract conditions (submit once per day for 15 days), divy up the total rewards to all who met conditions, send rewards

## next features
1. create new terms function (takes three params: a new time period, new total rewards, new addresses whitelist)
2. switchable tellor oracle address