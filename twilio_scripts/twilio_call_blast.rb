require 'rubygems'
require 'twilio-ruby'
 
account_sid = "insert"
auth_token = "insert"
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+1917-563-4548" # Your Twilio number
 


@client = Twilio::REST::Client.new account_sid, auth_token
 
@call = @client.account.calls.create(
  :from => from,   # From your Twilio number
  :to => '+19147557211',     # To any number
  # Fetch instructions from this URL when the call connects
  :url => 'http://twimlets.com/holdmusic?Bucket=com.twilio.music.ambient'
)
