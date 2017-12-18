require 'slack-ruby-bot'
require 'printer/slack_bot'
require 'alphabet'
require 'emoji_say'

SlackRubyBot::Client.logger.level = Logger::WARN

class EmojiBot < SlackRubyBot::Bot
  match /(?<emoji>(:.*:)) (?<word>.*)/ do |client, data, match|
    alphabet = Alphabet.new(match[:emoji], ' ' * 6)
    printer = Printer::SlackBot.new(client, data.channel)

    EmojiSay.new(alphabet, printer).say(match[:word])
  end
end
