##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'CredentialList' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .credentials_lists("CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "trunk_sid": "TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Wed, 11 Sep 2013 17:51:38 -0000",
          "date_updated": "Wed, 11 Sep 2013 17:51:38 -0000",
          "friendly_name": "Low Rises",
          "sid": "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .credentials_lists("CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .credentials_lists("CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .credentials_lists("CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .credentials_lists.create(credential_list_sid: "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {
        'CredentialListSid' => "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "trunk_sid": "TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Wed, 11 Sep 2013 17:51:38 -0000",
          "date_updated": "Wed, 11 Sep 2013 17:51:38 -0000",
          "friendly_name": "Low Rises",
          "sid": "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .credentials_lists.create(credential_list_sid: "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .credentials_lists.list()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "credential_lists": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "trunk_sid": "TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Wed, 11 Sep 2013 17:51:38 -0000",
                  "date_updated": "Wed, 11 Sep 2013 17:51:38 -0000",
                  "friendly_name": "Low Rises",
                  "sid": "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "credential_lists"
          }
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .credentials_lists.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "credential_lists": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CredentialLists?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "credential_lists"
          }
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .credentials_lists.list()

    expect(actual).to_not eq(nil)
  end
end