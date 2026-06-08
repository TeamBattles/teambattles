require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe game rank entry for the API key owner.
            class ApiGameRank
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # When the rank was first recorded.
                @created_at
                ## 
                # Game definition ID this rank belongs to.
                @game_id
                ## 
                # Game rank row ID.
                @id
                ## 
                # Whether the player is in the Top 250 ladder.
                @is_top250
                ## 
                # Game mode / playlist the rank is tracked for.
                @mode
                ## 
                # Origin of the rank: manual entry or an API push.
                @source
                ## 
                # Skill rating, when set.
                @sr
                ## 
                # Top 250 ladder position (1-250), when applicable.
                @top250_rank
                ## 
                # When the rank was last updated.
                @updated_at
                ## 
                # Current win streak count.
                @winstreak
                ## 
                ## Gets the createdAt property value. When the rank was first recorded.
                ## @return a string
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. When the rank was first recorded.
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_rank
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGameRank.new
                end
                ## 
                ## Gets the gameId property value. Game definition ID this rank belongs to.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game definition ID this rank belongs to.
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
                        "createdAt" => lambda {|n| @created_at = n.get_string_value() },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isTop250" => lambda {|n| @is_top250 = n.get_boolean_value() },
                        "mode" => lambda {|n| @mode = n.get_string_value() },
                        "source" => lambda {|n| @source = n.get_enum_value(TeamBattlesSdk::Generated::Models::ApiGameRankSource) },
                        "sr" => lambda {|n| @sr = n.get_object_value(lambda {|pn| ApiGameRank::ApiGameRankSr.create_from_discriminator_value(pn) }) },
                        "top250Rank" => lambda {|n| @top250_rank = n.get_object_value(lambda {|pn| ApiGameRank::ApiGameRankTop250Rank.create_from_discriminator_value(pn) }) },
                        "updatedAt" => lambda {|n| @updated_at = n.get_string_value() },
                        "winstreak" => lambda {|n| @winstreak = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the id property value. Game rank row ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Game rank row ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
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
                ## Gets the mode property value. Game mode / playlist the rank is tracked for.
                ## @return a string
                ## 
                def mode
                    return @mode
                end
                ## 
                ## Sets the mode property value. Game mode / playlist the rank is tracked for.
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
                    writer.write_string_value("createdAt", @created_at)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isTop250", @is_top250)
                    writer.write_string_value("mode", @mode)
                    writer.write_enum_value("source", @source)
                    writer.write_object_value("sr", @sr)
                    writer.write_object_value("top250Rank", @top250_rank)
                    writer.write_string_value("updatedAt", @updated_at)
                    writer.write_number_value("winstreak", @winstreak)
                end
                ## 
                ## Gets the source property value. Origin of the rank: manual entry or an API push.
                ## @return a api_game_rank_source
                ## 
                def source
                    return @source
                end
                ## 
                ## Sets the source property value. Origin of the rank: manual entry or an API push.
                ## @param value Value to set for the source property.
                ## @return a void
                ## 
                def source=(value)
                    @source = value
                end
                ## 
                ## Gets the sr property value. Skill rating, when set.
                ## @return a api_game_rank_sr
                ## 
                def sr
                    return @sr
                end
                ## 
                ## Sets the sr property value. Skill rating, when set.
                ## @param value Value to set for the sr property.
                ## @return a void
                ## 
                def sr=(value)
                    @sr = value
                end
                ## 
                ## Gets the top250Rank property value. Top 250 ladder position (1-250), when applicable.
                ## @return a api_game_rank_top250_rank
                ## 
                def top250_rank
                    return @top250_rank
                end
                ## 
                ## Sets the top250Rank property value. Top 250 ladder position (1-250), when applicable.
                ## @param value Value to set for the top250Rank property.
                ## @return a void
                ## 
                def top250_rank=(value)
                    @top250_rank = value
                end
                ## 
                ## Gets the updatedAt property value. When the rank was last updated.
                ## @return a string
                ## 
                def updated_at
                    return @updated_at
                end
                ## 
                ## Sets the updatedAt property value. When the rank was last updated.
                ## @param value Value to set for the updatedAt property.
                ## @return a void
                ## 
                def updated_at=(value)
                    @updated_at = value
                end
                ## 
                ## Gets the winstreak property value. Current win streak count.
                ## @return a integer
                ## 
                def winstreak
                    return @winstreak
                end
                ## 
                ## Sets the winstreak property value. Current win streak count.
                ## @param value Value to set for the winstreak property.
                ## @return a void
                ## 
                def winstreak=(value)
                    @winstreak = value
                end

                ## 
                # Composed type wrapper for classes ApiGameRankSrMember1, Double
                class ApiGameRankSr
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameRankSrMember1
                    @api_game_rank_sr_member1
                    ## 
                    # Composed type representation for type Double
                    @double
                    ## 
                    ## Gets the ApiGameRank_srMember1 property value. Composed type representation for type ApiGameRankSrMember1
                    ## @return a api_game_rank_sr_member1
                    ## 
                    def api_game_rank_sr_member1
                        return @api_game_rank_sr_member1
                    end
                    ## 
                    ## Sets the ApiGameRank_srMember1 property value. Composed type representation for type ApiGameRankSrMember1
                    ## @param value Value to set for the ApiGameRank_srMember1 property.
                    ## @return a void
                    ## 
                    def api_game_rank_sr_member1=(value)
                        @api_game_rank_sr_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_rank_sr
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameRankSr.new
                    end
                    ## 
                    ## Gets the double property value. Composed type representation for type Double
                    ## @return a double
                    ## 
                    def double
                        return @double
                    end
                    ## 
                    ## Sets the double property value. Composed type representation for type Double
                    ## @param value Value to set for the double property.
                    ## @return a void
                    ## 
                    def double=(value)
                        @double = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameRank_srMember1" => lambda {|n| @api_game_rank_sr_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameRankSrMember1.create_from_discriminator_value(pn) }) },
                            "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiGameRank_srMember1", @api_game_rank_sr_member1)
                        writer.write_object_value("double", @double)
                    end
                end

                ## 
                # Composed type wrapper for classes ApiGameRankTop250RankMember1, number
                class ApiGameRankTop250Rank
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameRankTop250RankMember1
                    @api_game_rank_top250_rank_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Gets the ApiGameRank_top250RankMember1 property value. Composed type representation for type ApiGameRankTop250RankMember1
                    ## @return a api_game_rank_top250_rank_member1
                    ## 
                    def api_game_rank_top250_rank_member1
                        return @api_game_rank_top250_rank_member1
                    end
                    ## 
                    ## Sets the ApiGameRank_top250RankMember1 property value. Composed type representation for type ApiGameRankTop250RankMember1
                    ## @param value Value to set for the ApiGameRank_top250RankMember1 property.
                    ## @return a void
                    ## 
                    def api_game_rank_top250_rank_member1=(value)
                        @api_game_rank_top250_rank_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_rank_top250_rank
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameRankTop250Rank.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameRank_top250RankMember1" => lambda {|n| @api_game_rank_top250_rank_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameRankTop250RankMember1.create_from_discriminator_value(pn) }) },
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                        }
                    end
                    ## 
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ## 
                    def integer
                        return @integer
                    end
                    ## 
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ## 
                    def integer=(value)
                        @integer = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiGameRank_top250RankMember1", @api_game_rank_top250_rank_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end
            end
        end
    end
end
