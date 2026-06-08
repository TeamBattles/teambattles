require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Upsert the API key owner's rank for one (gameId, mode) slot.
            class GameRankUpsertBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Game definition ID to set the rank for (a playable game).
                @game_id
                ## 
                # Whether the player is in the Top 250 ladder.
                @is_top250
                ## 
                # Game mode / playlist the rank applies to (a valid playlist ID).
                @mode
                ## 
                # Skill rating (integer, 0-100000).
                @sr
                ## 
                # Top 250 ladder position (1-250); only meaningful when isTop250.
                @top250_rank
                ## 
                # Current win streak count (0-99).
                @winstreak
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
                ## Instantiates a new GameRankUpsertBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_rank_upsert_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameRankUpsertBody.new
                end
                ## 
                ## Gets the gameId property value. Game definition ID to set the rank for (a playable game).
                ## @return a game_rank_upsert_body_game_id
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game definition ID to set the rank for (a playable game).
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
                        "gameId" => lambda {|n| @game_id = n.get_enum_value(TeamBattlesSdk::Generated::Models::GameRankUpsertBodyGameId) },
                        "isTop250" => lambda {|n| @is_top250 = n.get_boolean_value() },
                        "mode" => lambda {|n| @mode = n.get_string_value() },
                        "sr" => lambda {|n| @sr = n.get_number_value() },
                        "top250Rank" => lambda {|n| @top250_rank = n.get_number_value() },
                        "winstreak" => lambda {|n| @winstreak = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the isTop250 property value. Whether the player is in the Top 250 ladder.
                ## @return a boolean
                ## 
                def is_top250
                    return @is_top250
                end
                ## 
                ## Sets the isTop250 property value. Whether the player is in the Top 250 ladder.
                ## @param value Value to set for the isTop250 property.
                ## @return a void
                ## 
                def is_top250=(value)
                    @is_top250 = value
                end
                ## 
                ## Gets the mode property value. Game mode / playlist the rank applies to (a valid playlist ID).
                ## @return a string
                ## 
                def mode
                    return @mode
                end
                ## 
                ## Sets the mode property value. Game mode / playlist the rank applies to (a valid playlist ID).
                ## @param value Value to set for the mode property.
                ## @return a void
                ## 
                def mode=(value)
                    @mode = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("gameId", @game_id)
                    writer.write_boolean_value("isTop250", @is_top250)
                    writer.write_string_value("mode", @mode)
                    writer.write_number_value("sr", @sr)
                    writer.write_number_value("top250Rank", @top250_rank)
                    writer.write_number_value("winstreak", @winstreak)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the sr property value. Skill rating (integer, 0-100000).
                ## @return a integer
                ## 
                def sr
                    return @sr
                end
                ## 
                ## Sets the sr property value. Skill rating (integer, 0-100000).
                ## @param value Value to set for the sr property.
                ## @return a void
                ## 
                def sr=(value)
                    @sr = value
                end
                ## 
                ## Gets the top250Rank property value. Top 250 ladder position (1-250); only meaningful when isTop250.
                ## @return a integer
                ## 
                def top250_rank
                    return @top250_rank
                end
                ## 
                ## Sets the top250Rank property value. Top 250 ladder position (1-250); only meaningful when isTop250.
                ## @param value Value to set for the top250Rank property.
                ## @return a void
                ## 
                def top250_rank=(value)
                    @top250_rank = value
                end
                ## 
                ## Gets the winstreak property value. Current win streak count (0-99).
                ## @return a integer
                ## 
                def winstreak
                    return @winstreak
                end
                ## 
                ## Sets the winstreak property value. Current win streak count (0-99).
                ## @param value Value to set for the winstreak property.
                ## @return a void
                ## 
                def winstreak=(value)
                    @winstreak = value
                end
            end
        end
    end
end
