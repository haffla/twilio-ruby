##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Notification' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .notifications("NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications/NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2008-08-01",
          "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Tue, 18 Aug 2015 08:46:56 +0000",
          "date_updated": "Tue, 18 Aug 2015 08:46:57 +0000",
          "error_code": "15003",
          "log": "1",
          "message_date": "Tue, 18 Aug 2015 08:46:56 +0000",
          "message_text": "statusCallback=http%3A%2F%2Fexample.com%2Ffoo.xml&ErrorCode=15003&LogLevel=WARN&Msg=Got+HTTP+404+response+to+http%3A%2F%2Fexample.com%2Ffoo.xml",
          "more_info": "https://www.twilio.com/docs/errors/15003",
          "request_method": null,
          "request_url": "",
          "request_variables": "",
          "response_body": "",
          "response_headers": "",
          "sid": "NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications/NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .notifications("NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .notifications("NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications/NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .notifications("NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .notifications.list()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json?PageSize=50&Page=0",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "notifications": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2008-08-01",
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Tue, 18 Aug 2015 08:46:56 +0000",
                  "date_updated": "Tue, 18 Aug 2015 08:46:57 +0000",
                  "error_code": "15003",
                  "log": "1",
                  "message_date": "Tue, 18 Aug 2015 08:46:56 +0000",
                  "message_text": "statusCallback=http%3A%2F%2Fexample.com%2Ffoo.xml&ErrorCode=15003&LogLevel=WARN&Msg=Got+HTTP+404+response+to+http%3A%2F%2Fexample.com%2Ffoo.xml",
                  "more_info": "https://www.twilio.com/docs/errors/15003",
                  "request_method": null,
                  "request_url": "",
                  "sid": "NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications/NOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .notifications.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json?PageSize=50&Page=0",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "notifications": [],
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Notifications.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls("CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .notifications.list()

    expect(actual).to_not eq(nil)
  end
end