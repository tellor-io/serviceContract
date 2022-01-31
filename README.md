# Service Contract

Contract to pay Tellor reporters on Polygon.

## mvp
1. whitelist 10 reporter addresses
2. report function wrapper that checks if reporting address in whitelist, makes sure they aren't submitting more than once per day, then submits value
3. rewards function --> runs once on certain date, gets all reporter addresses that met the contract conditions (submit once per day for 15 days), divy up the total rewards to all who met conditions, send rewards

## next features
1. create new terms function (takes three params: a new time period, new total rewards, new addresses whitelist)
