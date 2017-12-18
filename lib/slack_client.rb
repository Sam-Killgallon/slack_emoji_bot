require 'net/http'
require 'uri'
require 'json'

class SlackClient
  def initialize(uri)
    @uri = URI(uri)
  end

  def send_message(message)
    Net::HTTP.post_form(uri, payload: body(message))
  end

  private

  attr_reader :uri

  def body(message)
    { text: message }.to_json
  end
end
