# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require("bundler")
Bundler.require()

#'twilio-ruby'

account_sid = ENV["TWILIO_ACCOUNT_SID"]
auth_token = ENV["TWILIO_AUTH_TOKEN"]
client = Twilio::REST::Client.new(account_sid, auth_token)

from = ENV["TWILIO_PHONE_NUMBER"] # Your Twilio number
to = ENV["MY_NUM"] # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Thank you! Your order was placed and will be delivered before 18:52"
)
