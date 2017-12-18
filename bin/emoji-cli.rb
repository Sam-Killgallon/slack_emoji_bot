#!/usr/bin/env ruby

$LOAD_PATH << File.expand_path('../lib', __dir__)

case
when ENV['SLACK_BOT_TOKEN']
  ENV['SLACK_API_TOKEN'] = ENV['SLACK_BOT_TOKEN']
  # Bot
  require 'emoji_bot'
  EmojiBot.run
  exit
when ENV['SLACK_WEBHOOK_URI']
  # Webhook
  require 'printer/slack_webhook'
  space = ' ' * 6
  printer = Printer::SlackWebhook.new(ENV['SLACK_WEBHOOK_URI'])
else
  # Console
  require 'printer/console'
  space = ' '
  printer = Printer::Console.new
end

require 'alphabet'
require 'emoji_say'

marker = ARGV.shift
raise 'No marker provided' unless marker

phrase = ARGV.join(' ') # Support unquoted phrases
raise 'No word provided' if phrase.strip.empty?

alphabet = Alphabet.new(marker, space)
EmojiSay.new(alphabet, printer).say(phrase)
