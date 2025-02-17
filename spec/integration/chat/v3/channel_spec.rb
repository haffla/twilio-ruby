##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Channel' do
  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.chat.v3.channels('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(x_twilio_webhook_enabled: 'true')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'X-Twilio-Webhook-Enabled' => 'true', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://chat.twilio.com/v3/Services/ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Channels/CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        headers: headers,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "unique_name": "unique_name",
          "attributes": "{ \\"foo\\": \\"bar\\" }",
          "type": "public",
          "date_created": "2015-12-16T22:18:37Z",
          "date_updated": "2015-12-16T22:18:38Z",
          "created_by": "username",
          "members_count": 0,
          "messages_count": 0,
          "url": "https://chat.twilio.com/v3/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.chat.v3.channels('ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', 'CHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end