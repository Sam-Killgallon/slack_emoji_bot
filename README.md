# Emoji Say
Convert words into emojis!
Give it an emoji and a phrase, it will print out the word using the emoji to generate letters.

# Setup
`bundle install`

# Run

### Slack Bot
Create a bot on slack (ie `emojibot`)

Start the bot:
`SLACK_BOT_TOKEN=bot-token bin/emoji-cli.rb`

Invite into a slack channel and type
`emojibot :gear: foobar`

or direct message

`:gear: foobar`

### Slack Webhook

Create a webhook on slack

Run from the command line `SLACK_WEBHOOK_URI=webhook-uri bin/emoji-cli.rb :gear: foobar`

### Console

Run from the command line `bin/emoji-cli.rb x foobar`

# Issues
Because emojis are different sizes, and spaces cant always equal the width of an emoji, the characters may look slightly wonky.
This tends to get worse the longer the word, as the small differences compound.

The alphabet template was only quicky thrown together so there is room for improvement

Each line begins with a `.` because leading spaces are ignored, which means letters like `A` dont render correctly
