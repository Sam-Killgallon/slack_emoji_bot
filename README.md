# slack_emoji_bot
Convert words into emojis!
Give it an emoji and a phrase, it will print out the word using the emoji to generate letters

# Setup
`bundle install`

# Run
`SLACK_API_TOKEN=bot-token bundle exec ruby emoji_bot.rb`

# Issues
Because emojis are different sizes, and spaces cant always equal the width of an emoji, the characters may look slightly wonky.
This tends to get worse the longer the word, as the small differences compound.

The alphabet template was only quicky thrown together so there is room for improvement

Each line begins with a `.` because leading spaces are ignored, which means letters like `A` dont render correctly
