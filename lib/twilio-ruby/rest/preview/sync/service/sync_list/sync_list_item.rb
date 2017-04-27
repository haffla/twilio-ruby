##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview < Domain
      class Sync < Version
        class ServiceContext < InstanceContext
          class SyncListContext < InstanceContext
            class SyncListItemList < ListResource
              ##
              # Initialize the SyncListItemList
              # @param [Version] version Version that contains the resource
              # @param [String] service_sid The service_sid
              # @param [String] list_sid The list_sid
              # @return [SyncListItemList] SyncListItemList
              def initialize(version, service_sid: nil, list_sid: nil)
                super(version)

                # Path Solution
                @solution = {
                    service_sid: service_sid,
                    list_sid: list_sid
                }
                @uri = "/Services/#{@solution[:service_sid]}/Lists/#{@solution[:list_sid]}/Items"
              end

              ##
              # Retrieve a single page of SyncListItemInstance records from the API.
              # Request is executed immediately.
              # @param [Hash] data The data
              # @return [SyncListItemInstance] Newly created SyncListItemInstance
              def create(data: nil)
                data = {
                    'Data' => data,
                }

                payload = @version.create(
                    'POST',
                    @uri,
                    data: data
                )

                return SyncListItemInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    list_sid: @solution[:list_sid],
                )
              end

              ##
              # Lists SyncListItemInstance records from the API as a list.
              # Unlike stream(), this operation is eager and will load `limit` records into
              # memory before returning.
              # @param [sync_list_item.QueryResultOrder] order The order
              # @param [String] from The from
              # @param [sync_list_item.QueryFromBoundType] bounds The bounds
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #                   guarantees to never return more than limit.  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
              #  the default value of 50 records.  If no page_size is                      defined
              #  but a limit is defined, stream() will attempt to read                      the
              #  limit with the most efficient page size,                      i.e. min(limit, 1000)
              # @return [Array] Array of up to limit results
              def list(order: nil, from: nil, bounds: nil, limit: nil, page_size: nil)
                self.stream(
                    order: order,
                    from: from,
                    bounds: bounds,
                    limit: limit,
                    page_size: page_size
                ).entries
              end

              ##
              # Streams SyncListItemInstance records from the API as an Enumerable.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [sync_list_item.QueryResultOrder] order The order
              # @param [String] from The from
              # @param [sync_list_item.QueryFromBoundType] bounds The bounds
              # @param [Integer] limit Upper limit for the number of records to return.                  stream()
              #  guarantees to never return more than limit.                  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
              #  the default value of 50 records.                      If no page_size is defined
              #                       but a limit is defined, stream() will attempt to                      read the
              #  limit with the most efficient page size,                       i.e. min(limit, 1000)
              # @return [Enumerable] Enumerable that will yield up to limit results
              def stream(order: nil, from: nil, bounds: nil, limit: nil, page_size: nil)
                limits = @version.read_limits(limit, page_size)

                page = self.page(
                    order: order,
                    from: from,
                    bounds: bounds,
                    page_size: limits[:page_size],
                )

                @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
              end

              ##
              # When passed a block, yields SyncListItemInstance records from the API.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [sync_list_item.QueryResultOrder] order The order
              # @param [String] from The from
              # @param [sync_list_item.QueryFromBoundType] bounds The bounds
              # @param [Integer] limit Upper limit for the number of records to return.                  stream()
              #  guarantees to never return more than limit.                  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
              #  the default value of 50 records.                      If no page_size is defined
              #                       but a limit is defined, stream() will attempt to read the
              #                       limit with the most efficient page size, i.e. min(limit, 1000)
              def each
                limits = @version.read_limits

                page = self.page(
                    page_size: limits[:page_size],
                )

                @version.stream(page,
                                limit: limits[:limit],
                                page_limit: limits[:page_limit]).each {|x| yield x}
              end

              ##
              # Retrieve a single page of SyncListItemInstance records from the API.
              # Request is executed immediately.
              # @param [sync_list_item.QueryResultOrder] order The order
              # @param [String] from The from
              # @param [sync_list_item.QueryFromBoundType] bounds The bounds
              # @param [String] page_token PageToken provided by the API
              # @param [Integer] page_number Page Number, this value is simply for client state
              # @param [Integer] page_size Number of records to return, defaults to 50
              # @return [Page] Page of SyncListItemInstance
              def page(order: nil, from: nil, bounds: nil, page_token: nil, page_number: nil, page_size: nil)
                params = {
                    'Order' => order,
                    'From' => from,
                    'Bounds' => bounds,
                    'PageToken' => page_token,
                    'Page' => page_number,
                    'PageSize' => page_size,
                }
                response = @version.page(
                    'GET',
                    @uri,
                    params
                )
                return SyncListItemPage.new(@version, response, @solution)
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Preview.Sync.SyncListItemList>'
              end
            end

            class SyncListItemPage < Page
              ##
              # Initialize the SyncListItemPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @param [String] service_sid The service_sid
              # @param [String] list_sid The list_sid
              # @return [SyncListItemPage] SyncListItemPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of SyncListItemInstance
              # @param [Hash] payload Payload response from the API
              # @return [SyncListItemInstance] SyncListItemInstance
              def get_instance(payload)
                return SyncListItemInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    list_sid: @solution[:list_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Preview.Sync.SyncListItemPage>'
              end
            end

            class SyncListItemContext < InstanceContext
              ##
              # Initialize the SyncListItemContext
              # @param [Version] version Version that contains the resource
              # @param [String] service_sid The service_sid
              # @param [String] list_sid The list_sid
              # @param [String] index The index
              # @return [SyncListItemContext] SyncListItemContext
              def initialize(version, service_sid, list_sid, index)
                super(version)

                # Path Solution
                @solution = {
                    service_sid: service_sid,
                    list_sid: list_sid,
                    index: index,
                }
                @uri = "/Services/#{@solution[:service_sid]}/Lists/#{@solution[:list_sid]}/Items/#{@solution[:index]}"
              end

              ##
              # Fetch a SyncListItemInstance
              # @return [SyncListItemInstance] Fetched SyncListItemInstance
              def fetch
                params = {}

                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )

                return SyncListItemInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    list_sid: @solution[:list_sid],
                    index: @solution[:index],
                )
              end

              ##
              # Deletes the SyncListItemInstance
              # @return [Boolean] true if delete succeeds, true otherwise
              def delete
                return @version.delete('delete', @uri)
              end

              ##
              # Update the SyncListItemInstance
              # @param [Hash] data The data
              # @return [SyncListItemInstance] Updated SyncListItemInstance
              def update(data: nil)
                data = {
                    'Data' => data,
                }

                payload = @version.update(
                    'POST',
                    @uri,
                    data: data,
                )

                return SyncListItemInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    list_sid: @solution[:list_sid],
                    index: @solution[:index],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Preview.Sync.SyncListItemContext #{context}>"
              end
            end

            class SyncListItemInstance < InstanceResource
              ##
              # Initialize the SyncListItemInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] service_sid The service_sid
              # @param [String] list_sid The list_sid
              # @param [String] index The index
              # @return [SyncListItemInstance] SyncListItemInstance
              def initialize(version, payload, service_sid: nil, list_sid: nil, index: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'index' => payload['index'].to_i,
                    'account_sid' => payload['account_sid'],
                    'service_sid' => payload['service_sid'],
                    'list_sid' => payload['list_sid'],
                    'url' => payload['url'],
                    'revision' => payload['revision'],
                    'data' => payload['data'],
                    'date_created' => Twilio.deserialize_iso8601(payload['date_created']),
                    'date_updated' => Twilio.deserialize_iso8601(payload['date_updated']),
                    'created_by' => payload['created_by'],
                }

                # Context
                @instance_context = nil
                @params = {
                    'service_sid' => service_sid,
                    'list_sid' => list_sid,
                    'index' => index || @properties['index'],
                }
              end

              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @param [Version] version Version that contains the resource
              # @return [SyncListItemContext] SyncListItemContext for this SyncListItemInstance
              def context
                unless @instance_context
                  @instance_context = SyncListItemContext.new(
                      @version,
                      @params['service_sid'],
                      @params['list_sid'],
                      @params['index'],
                  )
                end
                @instance_context
              end

              def index
                @properties['index']
              end

              def account_sid
                @properties['account_sid']
              end

              def service_sid
                @properties['service_sid']
              end

              def list_sid
                @properties['list_sid']
              end

              def url
                @properties['url']
              end

              def revision
                @properties['revision']
              end

              def data
                @properties['data']
              end

              def date_created
                @properties['date_created']
              end

              def date_updated
                @properties['date_updated']
              end

              def created_by
                @properties['created_by']
              end

              ##
              # Fetch a SyncListItemInstance
              # @return [SyncListItemInstance] Fetched SyncListItemInstance
              def fetch
                context.fetch
              end

              ##
              # Deletes the SyncListItemInstance
              # @return [Boolean] true if delete succeeds, true otherwise
              def delete
                context.delete
              end

              ##
              # Update the SyncListItemInstance
              # @param [Hash] data The data
              # @return [SyncListItemInstance] Updated SyncListItemInstance
              def update(data: nil)
                context.update(
                    data: data,
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Preview.Sync.SyncListItemInstance #{values}>"
              end
            end
          end
        end
      end
    end
  end
end