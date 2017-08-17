require 'pry'
require 'slack-ruby-bot'
require_relative 'slack_printer'
require_relative 'alphabet'
require_relative 'say'

SlackRubyBot::Client.logger.level = Logger::WARN

class EmojiBot < SlackRubyBot::Bot
  match /(?<emoji>(:.*:)) (?<word>.*)/ do |client, data, match|
    alphabet = Alphabet.new(match[:emoji], ' ' * 6)
    printer = SlackPrinter.new(client, data.channel)

    Say.new(alphabet, printer).word(match[:word])
  end
end

EmojiBot.run
