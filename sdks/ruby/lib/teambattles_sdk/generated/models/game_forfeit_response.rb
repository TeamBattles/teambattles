require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Result of a successful match forfeit.
            class GameForfeitResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # ID of the team that forfeited.
                @forfeited_by_team_id
                ## 
                # ID of the forfeited match.
                @match_id
                ## 
                # The success property
                @success
                ## 
                # Server response time (ISO 8601).
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_forfeit_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameForfeitResponse.new
                end
                ## 
                ## Gets the forfeitedByTeamId property value. ID of the team that forfeited.
                ## @return a string
                ## 
                def forfeited_by_team_id
                    return @forfeited_by_team_id
                end
                ## 
                ## Sets the forfeitedByTeamId property value. ID of the team that forfeited.
                ## @param value Value to set for the forfeitedByTeamId property.
                ## @return a void
                ## 
                def forfeited_by_team_id=(value)
                    @forfeited_by_team_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "forfeitedByTeamId" => lambda {|n| @forfeited_by_team_id = n.get_string_value() },
                        "matchId" => lambda {|n| @match_id = n.get_string_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the matchId property value. ID of the forfeited match.
                ## @return a string
                ## 
                def match_id
                    return @match_id
                end
                ## 
                ## Sets the matchId property value. ID of the forfeited match.
                ## @param value Value to set for the matchId property.
                ## @return a void
                ## 
                def match_id=(value)
                    @match_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("forfeitedByTeamId", @forfeited_by_team_id)
                    writer.write_string_value("matchId", @match_id)
                    writer.write_boolean_value("success", @success)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the success property value. The success property
                ## @return a boolean
                ## 
                def success
                    return @success
                end
                ## 
                ## Sets the success property value. The success property
                ## @param value Value to set for the success property.
                ## @return a void
                ## 
                def success=(value)
                    @success = value
                end
                ## 
                ## Gets the timestamp property value. Server response time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Server response time (ISO 8601).
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
