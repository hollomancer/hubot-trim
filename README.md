# hubot-trim
[![Code Climate](https://codeclimate.com/github/hollomancer/hubot-trim/badges/gpa.svg)](https://codeclimate.com/github/hollomancer/hubot-trim)
use /trim command to shorten URLs with tr.im

See [`script/trim.coffee`](script/trim.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-trim --save`

Then add **hubot-trim** to your `external-scripts.json`:

```json
["hubot-trim"]
```

## Sample Interaction

```
user1>> trim www.google.com
hubot>> http://tr.im/ad71e
```
=======
Hubot module to shorten URLs with tr.im
