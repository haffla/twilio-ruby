##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview < Domain
      class Proxy < Version
        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class ServiceList < ListResource
          ##
          # Initialize the ServiceList
          # @param [Version] version Version that contains the resource
          # @return [ServiceList] ServiceList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Services"
          end

          ##
          # Lists ServiceInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records.  If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(limit: nil, page_size: nil)
            self.stream(
                limit: limit,
                page_size: page_size
            ).entries
          end

          ##
          # Streams ServiceInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit. Default is no limit.
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records. If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(
                page_size: limits[:page_size],
            )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields ServiceInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
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
          # Retrieve a single page of ServiceInstance records from the API.
          # Request is executed immediately.
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of ServiceInstance
          def page(page_token: :unset, page_number: :unset, page_size: :unset)
            params = Twilio::Values.of({
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            })
            response = @version.page(
                'GET',
                @uri,
                params
            )
            ServicePage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of ServiceInstance records from the API.
          # Request is executed immediately.
          # @param [String] target_url API-generated URL for the requested results page
          # @return [Page] Page of ServiceInstance
          def get_page(target_url)
            response = @version.domain.request(
                'GET',
                target_url
            )
            ServicePage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of ServiceInstance records from the API.
          # Request is executed immediately.
          # @param [String] friendly_name A human readable description of this resource, up
          #   to 64 characters.
          # @param [Boolean] auto_create Boolean flag specifying whether to create threads
          #   when a user communticates out of band.
          # @param [String] callback_url The URL Twilio will request for callback
          #   notifications.
          # @return [ServiceInstance] Newly created ServiceInstance
          def create(friendly_name: :unset, auto_create: :unset, callback_url: :unset)
            data = Twilio::Values.of({
                'FriendlyName' => friendly_name,
                'AutoCreate' => auto_create,
                'CallbackUrl' => callback_url,
            })

            payload = @version.create(
                'POST',
                @uri,
                data: data
            )

            ServiceInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Preview.Proxy.ServiceList>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class ServicePage < Page
          ##
          # Initialize the ServicePage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [ServicePage] ServicePage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of ServiceInstance
          # @param [Hash] payload Payload response from the API
          # @return [ServiceInstance] ServiceInstance
          def get_instance(payload)
            ServiceInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Preview.Proxy.ServicePage>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class ServiceContext < InstanceContext
          ##
          # Initialize the ServiceContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid A 34 character string that uniquely identifies this Service.
          # @return [ServiceContext] ServiceContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = {
                sid: sid,
            }
            @uri = "/Services/#{@solution[:sid]}"

            # Dependents
            @sessions = nil
            @phone_numbers = nil
            @short_codes = nil
          end

          ##
          # Fetch a ServiceInstance
          # @return [ServiceInstance] Fetched ServiceInstance
          def fetch
            params = Twilio::Values.of({})

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            ServiceInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Deletes the ServiceInstance
          # @return [Boolean] true if delete succeeds, true otherwise
          def delete
            @version.delete('delete', @uri)
          end

          ##
          # Update the ServiceInstance
          # @param [String] friendly_name A human readable description of this resource, up
          #   to 64 characters.
          # @param [Boolean] auto_create Boolean flag specifying whether to create threads
          #   when a user communticates out of band.
          # @param [String] callback_url The URL Twilio will request for callback
          #   notifications.
          # @return [ServiceInstance] Updated ServiceInstance
          def update(friendly_name: :unset, auto_create: :unset, callback_url: :unset)
            data = Twilio::Values.of({
                'FriendlyName' => friendly_name,
                'AutoCreate' => auto_create,
                'CallbackUrl' => callback_url,
            })

            payload = @version.update(
                'POST',
                @uri,
                data: data,
            )

            ServiceInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Access the sessions
          # @return [SessionList]
          # @return [SessionContext] if sid was passed.
          def sessions(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return SessionContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @sessions
              @sessions = SessionList.new(
                  @version,
                  service_sid: @solution[:sid],
              )
            end

            @sessions
          end

          ##
          # Access the phone_numbers
          # @return [PhoneNumberList]
          # @return [PhoneNumberContext] if sid was passed.
          def phone_numbers(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return PhoneNumberContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @phone_numbers
              @phone_numbers = PhoneNumberList.new(
                  @version,
                  service_sid: @solution[:sid],
              )
            end

            @phone_numbers
          end

          ##
          # Access the short_codes
          # @return [ShortCodeList]
          # @return [ShortCodeContext] if sid was passed.
          def short_codes(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return ShortCodeContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @short_codes
              @short_codes = ShortCodeList.new(
                  @version,
                  service_sid: @solution[:sid],
              )
            end

            @short_codes
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Preview.Proxy.ServiceContext #{context}>"
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class ServiceInstance < InstanceResource
          ##
          # Initialize the ServiceInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] sid A 34 character string that uniquely identifies this Service.
          # @return [ServiceInstance] ServiceInstance
          def initialize(version, payload, sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'sid' => payload['sid'],
                'friendly_name' => payload['friendly_name'],
                'account_sid' => payload['account_sid'],
                'auto_create' => payload['auto_create'],
                'callback_url' => payload['callback_url'],
                'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                'url' => payload['url'],
                'links' => payload['links'],
            }

            # Context
            @instance_context = nil
            @params = {
                'sid' => sid || @properties['sid'],
            }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [ServiceContext] ServiceContext for this ServiceInstance
          def context
            unless @instance_context
              @instance_context = ServiceContext.new(
                  @version,
                  @params['sid'],
              )
            end
            @instance_context
          end

          ##
          # @return [String] A string that uniquely identifies this Service.
          def sid
            @properties['sid']
          end

          ##
          # @return [String] A human readable description of this resource
          def friendly_name
            @properties['friendly_name']
          end

          ##
          # @return [String] Account Sid.
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [Boolean] Boolean flag specifying whether to auto-create threads.
          def auto_create
            @properties['auto_create']
          end

          ##
          # @return [String] URL Twilio will request for callbacks.
          def callback_url
            @properties['callback_url']
          end

          ##
          # @return [Time] The date this Service was created
          def date_created
            @properties['date_created']
          end

          ##
          # @return [Time] The date this Service was updated
          def date_updated
            @properties['date_updated']
          end

          ##
          # @return [String] The URL of this resource.
          def url
            @properties['url']
          end

          ##
          # @return [String] Nested resource URLs.
          def links
            @properties['links']
          end

          ##
          # Fetch a ServiceInstance
          # @return [ServiceInstance] Fetched ServiceInstance
          def fetch
            context.fetch
          end

          ##
          # Deletes the ServiceInstance
          # @return [Boolean] true if delete succeeds, true otherwise
          def delete
            context.delete
          end

          ##
          # Update the ServiceInstance
          # @param [String] friendly_name A human readable description of this resource, up
          #   to 64 characters.
          # @param [Boolean] auto_create Boolean flag specifying whether to create threads
          #   when a user communticates out of band.
          # @param [String] callback_url The URL Twilio will request for callback
          #   notifications.
          # @return [ServiceInstance] Updated ServiceInstance
          def update(friendly_name: :unset, auto_create: :unset, callback_url: :unset)
            context.update(
                friendly_name: friendly_name,
                auto_create: auto_create,
                callback_url: callback_url,
            )
          end

          ##
          # Access the sessions
          # @return [sessions] sessions
          def sessions
            context.sessions
          end

          ##
          # Access the phone_numbers
          # @return [phone_numbers] phone_numbers
          def phone_numbers
            context.phone_numbers
          end

          ##
          # Access the short_codes
          # @return [short_codes] short_codes
          def short_codes
            context.short_codes
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Preview.Proxy.ServiceInstance #{values}>"
          end
        end
      end
    end
  end
end