require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Type, team, game, and limit filters for league penalties and cooldowns.
            class PenaltiesRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Filter penalties to a specific game id.
                @game_id
                ## 
                # Maximum number of penalties to return (1-100). Defaults to 50.
                @limit
                ## 
                # Filter penalties to a specific team id.
                @team_id
                ## 
                # Which record kinds to return. Defaults to all.
                @type
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
                ## Instantiates a new PenaltiesRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                    @limit = 50
                    @type = TeamBattlesSdk::Generated::Models::PenaltiesRequestBodyType[:All]
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a penalties_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PenaltiesRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Filter penalties to a specific game id.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Filter penalties to a specific game id.
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
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "type" => lambda {|n| @type = n.get_enum_value(TeamBattlesSdk::Generated::Models::PenaltiesRequestBodyType) },
                    }
                end
                ## 
                ## Gets the limit property value. Maximum number of penalties to return (1-100). Defaults to 50.
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. Maximum number of penalties to return (1-100). Defaults to 50.
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("gameId", @game_id)
                    writer.write_number_value("limit", @limit)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_enum_value("type", @type)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the teamId property value. Filter penalties to a specific team id.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Filter penalties to a specific team id.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the type property value. Which record kinds to return. Defaults to all.
                ## @return a penalties_request_body_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. Which record kinds to return. Defaults to all.
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
            end
        end
    end
end
