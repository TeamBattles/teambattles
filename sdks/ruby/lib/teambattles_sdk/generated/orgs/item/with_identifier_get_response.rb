require 'microsoft_kiota_abstractions'
require_relative '../../models/api_organization_profile'
require_relative '../../team_battles_sdk::_generated'
require_relative '../orgs'
require_relative './item'

module TeamBattlesSdk
    module Generated
        module Orgs
            module Item
                ##
                # Envelope containing organization plus a response timestamp.
                class WithIdentifierGetResponse
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # API-safe organization profile.
                    @organization
                    ##
                    # ISO 8601 timestamp.
                    @timestamp
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a with_identifier_get_response
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WithIdentifierGetResponse.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "organization" => lambda {|n| @organization = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfile.create_from_discriminator_value(pn) }) },
                            "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        }
                    end
                    ##
                    ## Gets the organization property value. API-safe organization profile.
                    ## @return a api_organization_profile
                    ##
                    def organization
                        return @organization
                    end
                    ##
                    ## Sets the organization property value. API-safe organization profile.
                    ## @param value Value to set for the organization property.
                    ## @return a void
                    ##
                    def organization=(value)
                        @organization = value
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("organization", @organization)
                        writer.write_string_value("timestamp", @timestamp)
                    end
                    ##
                    ## Gets the timestamp property value. ISO 8601 timestamp.
                    ## @return a string
                    ##
                    def timestamp
                        return @timestamp
                    end
                    ##
                    ## Sets the timestamp property value. ISO 8601 timestamp.
                    ## @param value Value to set for the timestamp property.
                    ## @return a void
                    ##
                    def timestamp=(value)
                        @timestamp = value
                    end
                end
            end
        end
    end
end
