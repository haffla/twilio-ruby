##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'BrandVetting' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.brand_registrations('BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .brand_vettings.create(vetting_provider: 'campaign-verify')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'VettingProvider' => 'campaign-verify', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/a2p/BrandRegistrations/BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Vettings',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "AC78e8e67fc0246521490fb9907fd0c165",
          "brand_sid": "BN0044409f7e067e279523808d267e2d85",
          "brand_vetting_sid": "VT12445353",
          "vetting_provider": "campaign-verify",
          "vetting_id": "cv|1.0|tcr|10dlc|9975c339-d46f-49b7-a399-EXAMPLETOKEN|GQ3EXAMPLETOKENAXXBUNBT2AgL-LdQuPveFhEyY",
          "vetting_class": "POLITICAL",
          "vetting_status": "IN_PROGRESS",
          "date_created": "2021-01-27T14:18:35Z",
          "date_updated": "2021-01-27T14:18:35Z",
          "url": "https://messaging.twilio.com/v1/a2p/BrandRegistrations/BN0044409f7e067e279523808d267e2d85/Vettings/VT12445353"
      }
      ]
    ))

    actual = @client.messaging.v1.brand_registrations('BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .brand_vettings.create(vetting_provider: 'campaign-verify')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.brand_registrations('BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .brand_vettings.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/a2p/BrandRegistrations/BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Vettings',
    ))).to eq(true)
  end

  it "receives read responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://messaging.twilio.com/v1/a2p/BrandRegistrations/BN0044409f7e067e279523808d267e2d85/Vettings?PageSize=50&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "data",
              "url": "https://messaging.twilio.com/v1/a2p/BrandRegistrations/BN0044409f7e067e279523808d267e2d85/Vettings?PageSize=50&Page=0"
          },
          "data": [
              {
                  "account_sid": "AC78e8e67fc0246521490fb9907fd0c165",
                  "brand_sid": "BN0044409f7e067e279523808d267e2d85",
                  "brand_vetting_sid": "VT12445353",
                  "vetting_provider": "campaign-verify",
                  "vetting_id": "cv|1.0|tcr|10dlc|9975c339-d46f-49b7-a399-EXAMPLETOKEN|GQ3EXAMPLETOKENAXXBUNBT2AgL-LdQuPveFhEyY",
                  "vetting_class": "POLITICAL",
                  "vetting_status": "IN_PROGRESS",
                  "date_created": "2021-01-27T14:18:35Z",
                  "date_updated": "2021-01-27T14:18:35Z",
                  "url": "https://messaging.twilio.com/v1/a2p/BrandRegistrations/BN0044409f7e067e279523808d267e2d85/Vettings/VT12445353"
              }
          ]
      }
      ]
    ))

    actual = @client.messaging.v1.brand_registrations('BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .brand_vettings.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.brand_registrations('BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                          .brand_vettings('VTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/a2p/BrandRegistrations/BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Vettings/VTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "AC78e8e67fc0246521490fb9907fd0c165",
          "brand_sid": "BN0044409f7e067e279523808d267e2d85",
          "brand_vetting_sid": "VT12445353",
          "vetting_provider": "campaign-verify",
          "vetting_id": "cv|1.0|tcr|10dlc|9975c339-d46f-49b7-a399-EXAMPLETOKEN|GQ3EXAMPLETOKENAXXBUNBT2AgL-LdQuPveFhEyY",
          "vetting_class": "POLITICAL",
          "vetting_status": "IN_PROGRESS",
          "date_created": "2021-01-27T14:18:35Z",
          "date_updated": "2021-01-27T14:18:35Z",
          "url": "https://messaging.twilio.com/v1/a2p/BrandRegistrations/BN0044409f7e067e279523808d267e2d85/Vettings/VT12445353"
      }
      ]
    ))

    actual = @client.messaging.v1.brand_registrations('BNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                 .brand_vettings('VTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end
end