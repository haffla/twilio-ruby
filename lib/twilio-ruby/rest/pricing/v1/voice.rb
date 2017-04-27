##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Pricing < Domain
      class V1 < Version
        class VoiceList < ListResource
          ##
          # Initialize the VoiceList
          # @param [Version] version Version that contains the resource
          # @return [VoiceList] VoiceList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}

            # Components
            @numbers = nil
            @countries = nil
          end

          ##
          # Access the numbers
          # @param [String] number The number
          # @return [NumberList] NumberList
          def numbers(number=:unset)
            if number != :unset
              return NumberContext.new(
                  @version,
                  number,
              )
            end

              @numbers ||= NumberList.new(
                  @version,
              )
          end

          ##
          # Access the countries
          # @param [String] iso_country The iso_country
          # @return [CountryList] CountryList
          def countries(iso_country=:unset)
            if iso_country != :unset
              return CountryContext.new(
                  @version,
                  iso_country,
              )
            end

              @countries ||= CountryList.new(
                  @version,
              )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Pricing.V1.VoiceList>'
          end
        end

        class VoicePage < Page
          ##
          # Initialize the VoicePage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [VoicePage] VoicePage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of VoiceInstance
          # @param [Hash] payload Payload response from the API
          # @return [VoiceInstance] VoiceInstance
          def get_instance(payload)
            return VoiceInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Pricing.V1.VoicePage>'
          end
        end

        class VoiceInstance < InstanceResource
          ##
          # Initialize the VoiceInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [VoiceInstance] VoiceInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {
                'name' => payload['name'],
                'url' => payload['url'],
                'links' => payload['links'],
            }
          end

          def name
            @properties['name']
          end

          def url
            @properties['url']
          end

          def links
            @properties['links']
          end

          ##
          # Provide a user friendly representation
          def to_s
            "<Twilio.Pricing.V1.VoiceInstance>"
          end
        end
      end
    end
  end
end