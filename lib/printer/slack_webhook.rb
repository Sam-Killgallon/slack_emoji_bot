require 'slack_client'

module Printer
  class SlackWebhook
    def initialize(uri)
      @client = SlackClient.new(uri)
      @buffer = ''
    end

    def write(text)
      @buffer << '.' if @buffer.empty?
      @buffer << text
    end

    def flush
      client.send_message(@buffer)
      @buffer = ''
    end

    private

    attr_reader :client, :channel
  end
end
