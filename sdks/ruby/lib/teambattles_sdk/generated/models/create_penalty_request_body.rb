require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a league team penalty.
            class CreatePenaltyRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Game ID for the league penalty.
                @game_id
                ## 
                # Reason for the penalty.
                @reason
                ## 
                # Optional league season ID for the penalty.
                @season_id
                ## 
                # Team ID receiving the penalty.
                @team_id
                ## 
                # Penalty type.
                @type
                ## 
                # Point value for POINT_DEDUCTION (integer, 1-1000).
                @value
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
                ## Instantiates a new CreatePenaltyRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_penalty_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreatePenaltyRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Game ID for the league penalty.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID for the league penalty.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "reason" => lambda {|n| @reason = n.get_string_value() },
                        "seasonId" => lambda {|n| @season_id = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "type" => lambda {|n| @type = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreatePenaltyRequestBodyType) },
                        "value" => lambda {|n| @value = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the reason property value. Reason for the penalty.
                ## @return a string
                ## 
                def reason
                    return @reason
                end
                ## 
                ## Sets the reason property value. Reason for the penalty.
                ## @param value Value to set for the reason property.
                ## @return a void
                ## 
                def reason=(value)
                    @reason = value
                end
                ## 
                ## Gets the seasonId property value. Optional league season ID for the penalty.
                ## @return a string
                ## 
                def season_id
                    return @season_id
                end
                ## 
                ## Sets the seasonId property value. Optional league season ID for the penalty.
                ## @param value Value to set for the seasonId property.
                ## @return a void
                ## 
                def season_id=(value)
                    @season_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("reason", @reason)
                    writer.write_string_value("seasonId", @season_id)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_enum_value("type", @type)
                    writer.write_number_value("value", @value)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the teamId property value. Team ID receiving the penalty.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Team ID receiving the penalty.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the type property value. Penalty type.
                ## @return a create_penalty_request_body_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. Penalty type.
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
                ## 
                ## Gets the value property value. Point value for POINT_DEDUCTION (integer, 1-1000).
                ## @return a integer
                ## 
                def value
                    return @value
                end
                ## 
                ## Sets the value property value. Point value for POINT_DEDUCTION (integer, 1-1000).
                ## @param value Value to set for the value property.
                ## @return a void
                ## 
                def value=(value)
                    @value = value
                end
            end
        end
    end
end
