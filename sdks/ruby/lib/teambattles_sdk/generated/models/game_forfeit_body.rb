require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Request body for forfeiting a match on behalf of one participating team.
            class GameForfeitBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ##
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ##
                # ID of the team that forfeits. Must be a participant of the match.
                @forfeiting_team_id
                ##
                # Optional human-readable forfeit reason, recorded on the match.
                @reason
                ##
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ##
                def additional_data
                    return @additional_data
                end
                ##
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ##
                def additional_data=(value)
                    @additional_data = value
                end
                ##
                ## Instantiates a new GameForfeitBody and sets the default values.
                ## @return a void
                ##
                def initialize()
                    @additional_data = Hash.new
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_forfeit_body
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameForfeitBody.new
                end
                ##
                ## Gets the forfeitingTeamId property value. ID of the team that forfeits. Must be a participant of the match.
                ## @return a string
                ##
                def forfeiting_team_id
                    return @forfeiting_team_id
                end
                ##
                ## Sets the forfeitingTeamId property value. ID of the team that forfeits. Must be a participant of the match.
                ## @param value Value to set for the forfeitingTeamId property.
                ## @return a void
                ##
                def forfeiting_team_id=(value)
                    @forfeiting_team_id = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "forfeitingTeamId" => lambda {|n| @forfeiting_team_id = n.get_string_value() },
                        "reason" => lambda {|n| @reason = n.get_string_value() },
                    }
                end
                ##
                ## Gets the reason property value. Optional human-readable forfeit reason, recorded on the match.
                ## @return a string
                ##
                def reason
                    return @reason
                end
                ##
                ## Sets the reason property value. Optional human-readable forfeit reason, recorded on the match.
                ## @param value Value to set for the reason property.
                ## @return a void
                ##
                def reason=(value)
                    @reason = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("forfeitingTeamId", @forfeiting_team_id)
                    writer.write_string_value("reason", @reason)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
