require 'microsoft_kiota_abstractions'
require_relative '../../../models/api_user_team_membership'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../users'
require_relative '../item'
require_relative './teams'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                module Teams
                    ## 
                    # Envelope containing teams, count, and a response timestamp.
                    class TeamsGetResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The count property
                        @count
                        ## 
                        # The teams property
                        @teams
                        ## 
                        # ISO 8601 timestamp.
                        @timestamp
                        ## 
                        ## Gets the count property value. The count property
                        ## @return a integer
                        ## 
                        def count
                            return @count
                        end
                        ## 
                        ## Sets the count property value. The count property
                        ## @param value Value to set for the count property.
                        ## @return a void
                        ## 
                        def count=(value)
                            @count = value
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a teams_get_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return TeamsGetResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "count" => lambda {|n| @count = n.get_number_value() },
                                "teams" => lambda {|n| @teams = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTeamMembership.create_from_discriminator_value(pn) }) },
                                "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_number_value("count", @count)
                            writer.write_collection_of_object_values("teams", @teams)
                            writer.write_string_value("timestamp", @timestamp)
                        end
                        ## 
                        ## Gets the teams property value. The teams property
                        ## @return a api_user_team_membership
                        ## 
                        def teams
                            return @teams
                        end
                        ## 
                        ## Sets the teams property value. The teams property
                        ## @param value Value to set for the teams property.
                        ## @return a void
                        ## 
                        def teams=(value)
                            @teams = value
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
end
