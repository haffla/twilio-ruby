##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'WorkspaceStatistics' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                           .statistics().fetch()
    }.to raise_exception(Twilio::REST::TwilioException)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Statistics',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Statistics",
          "cumulative": {
              "avg_task_acceptance_time": 0.0,
              "start_time": "2008-01-02T00:00:00Z",
              "reservations_accepted": 0,
              "reservations_canceled": 0,
              "reservations_created": 0,
              "reservations_rejected": 0,
              "reservations_rescinded": 0,
              "reservations_timed_out": 0,
              "end_time": "2008-01-02T00:00:00Z",
              "tasks_canceled": 0,
              "tasks_created": 0,
              "tasks_deleted": 0,
              "tasks_moved": 0,
              "tasks_timed_out_in_workflow": 0
          },
          "realtime": {
              "activity_statistics": [
                  {
                      "friendly_name": "Offline",
                      "sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workers": 1
                  },
                  {
                      "friendly_name": "Idle",
                      "sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workers": 0
                  },
                  {
                      "friendly_name": "80fa2beb-3a05-11e5-8fc8-98e0d9a1eb73",
                      "sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workers": 0
                  },
                  {
                      "friendly_name": "Reserved",
                      "sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workers": 0
                  },
                  {
                      "friendly_name": "Busy",
                      "sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workers": 0
                  },
                  {
                      "friendly_name": "817ca1c5-3a05-11e5-9292-98e0d9a1eb73",
                      "sid": "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "workers": 0
                  }
              ],
              "longest_task_waiting_age": 0,
              "longest_task_waiting_sid": null,
              "tasks_by_status": {
                  "assigned": 0,
                  "pending": 0,
                  "reserved": 0,
                  "wrapping": 0
              },
              "total_tasks": 0,
              "total_workers": 1
          },
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces("WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                  .statistics().fetch()

    expect(actual).to_not eq(nil)
  end
end