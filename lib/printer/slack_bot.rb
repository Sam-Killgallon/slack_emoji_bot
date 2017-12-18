module Printer
  class SlackBot
    def initialize(client, channel)
      @client = client
      @channel = channel
      @buffer = ''
    end

    def write(text)
      @buffer << '.' if @buffer.empty?
      @buffer << text
    end

    def flush
      client.say(text: @buffer, channel: channel)
      @buffer = ''
    end

    private

    attr_reader :client, :channel
  end
end
