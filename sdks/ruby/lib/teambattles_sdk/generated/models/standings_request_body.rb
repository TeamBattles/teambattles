require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Season and game filters for league standings.
            class StandingsRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Filter standings to a specific game id.
                @game_id
                ## 
                # Maximum number of teams to return (1-100). Defaults to 50.
                @limit
                ## 
                # Filter standings to a specific season id.
                @season_id
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
                ## Instantiates a new StandingsRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                    @limit = 50
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a standings_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return StandingsRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Filter standings to a specific game id.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Filter standings to a specific game id.
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
                        "seasonId" => lambda {|n| @season_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the limit property value. Maximum number of teams to return (1-100). Defaults to 50.
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. Maximum number of teams to return (1-100). Defaults to 50.
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Gets the seasonId property value. Filter standings to a specific season id.
                ## @return a string
                ## 
                def season_id
                    return @season_id
                end
                ## 
                ## Sets the seasonId property value. Filter standings to a specific season id.
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
                    writer.write_number_value("limit", @limit)
                    writer.write_string_value("seasonId", @season_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
