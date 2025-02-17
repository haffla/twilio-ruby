##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Build' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .builds.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Builds',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "builds": [],
          "meta": {
              "first_page_url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds?PageSize=50&Page=0",
              "key": "builds",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .builds.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .builds('ZBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Builds/ZBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ZB00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ZS00000000000000000000000000000000",
          "asset_versions": [
              {
                  "sid": "ZN00000000000000000000000000000000",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ZS00000000000000000000000000000000",
                  "asset_sid": "ZH00000000000000000000000000000000",
                  "date_created": "2018-11-10T20:00:00Z",
                  "path": "/asset-path",
                  "visibility": "PUBLIC"
              }
          ],
          "function_versions": [
              {
                  "sid": "ZN00000000000000000000000000000001",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ZS00000000000000000000000000000000",
                  "function_sid": "ZH00000000000000000000000000000001",
                  "date_created": "2018-11-10T20:00:00Z",
                  "path": "/function-path",
                  "visibility": "PUBLIC"
              }
          ],
          "dependencies": [
              {
                  "name": "twilio",
                  "version": "3.29.2"
              },
              {
                  "name": "@twilio/runtime-handler",
                  "version": "1.0.1"
              }
          ],
          "runtime": "node14",
          "status": "building",
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds/ZB00000000000000000000000000000000",
          "links": {
              "build_status": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds/ZB00000000000000000000000000000000/Status"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .builds('ZBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .builds('ZBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Builds/ZBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .builds('ZBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .builds.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Builds',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "ZB00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ZS00000000000000000000000000000000",
          "asset_versions": [
              {
                  "sid": "ZN00000000000000000000000000000000",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ZS00000000000000000000000000000000",
                  "asset_sid": "ZH00000000000000000000000000000000",
                  "date_created": "2018-11-10T20:00:00Z",
                  "path": "/asset-path",
                  "visibility": "PUBLIC"
              }
          ],
          "function_versions": [
              {
                  "sid": "ZN00000000000000000000000000000001",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ZS00000000000000000000000000000000",
                  "function_sid": "ZH00000000000000000000000000000001",
                  "date_created": "2018-11-10T20:00:00Z",
                  "path": "/function-path",
                  "visibility": "PUBLIC"
              }
          ],
          "dependencies": [
              {
                  "name": "twilio",
                  "version": "3.29.2"
              },
              {
                  "name": "@twilio/runtime-handler",
                  "version": "1.0.1"
              }
          ],
          "runtime": "node14",
          "status": "building",
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds/ZB00000000000000000000000000000000",
          "links": {
              "build_status": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds/ZB00000000000000000000000000000000/Status"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .builds.create()

    expect(actual).to_not eq(nil)
  end
end