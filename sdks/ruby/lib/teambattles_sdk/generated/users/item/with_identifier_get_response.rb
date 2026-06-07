require 'microsoft_kiota_abstractions'
require_relative '../../models/api_user_profile'
require_relative '../../team_battles_sdk::_generated'
require_relative '../users'
require_relative './item'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                ##
                # Envelope containing user plus a response timestamp.
                class WithIdentifierGetResponse
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # ISO 8601 timestamp.
                    @timestamp
                    ##
                    # API-safe public user profile.
                    @user
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
                            "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                            "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfile.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("timestamp", @timestamp)
                        writer.write_object_value("user", @user)
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
                    ##
                    ## Gets the user property value. API-safe public user profile.
                    ## @return a api_user_profile
                    ##
                    def user
                        return @user
                    end
                    ##
                    ## Sets the user property value. API-safe public user profile.
                    ## @param value Value to set for the user property.
                    ## @return a void
                    ##
                    def user=(value)
                        @user = value
                    end
                end
            end
        end
    end
end
