require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Leaderboard rank lookup response.
            class LeaderboardRankResponse
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The gameSlug property
                @game_slug
                ##
                # Resolved entity ID.
                @id
                ##
                # The rank property
                @rank
                ##
                # Supported leaderboard sort field.
                @sort_by
                ##
                # The timestamp property
                @timestamp
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a leaderboard_rank_response
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeaderboardRankResponse.new
                end
                ##
                ## Gets the gameSlug property value. The gameSlug property
                ## @return a leaderboard_rank_response_game_slug
                ##
                def game_slug
                    return @game_slug
                end
                ##
                ## Sets the gameSlug property value. The gameSlug property
                ## @param value Value to set for the gameSlug property.
                ## @return a void
                ##
                def game_slug=(value)
                    @game_slug = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "gameSlug" => lambda {|n| @game_slug = n.get_object_value(lambda {|pn| LeaderboardRankResponse::LeaderboardRankResponseGameSlug.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "rank" => lambda {|n| @rank = n.get_object_value(lambda {|pn| LeaderboardRankResponse::LeaderboardRankResponseRank.create_from_discriminator_value(pn) }) },
                        "sortBy" => lambda {|n| @sort_by = n.get_enum_value(TeamBattlesSdk::Generated::Models::LeaderboardSortBy) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ##
                ## Gets the id property value. Resolved entity ID.
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. Resolved entity ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the rank property value. The rank property
                ## @return a leaderboard_rank_response_rank
                ##
                def rank
                    return @rank
                end
                ##
                ## Sets the rank property value. The rank property
                ## @param value Value to set for the rank property.
                ## @return a void
                ##
                def rank=(value)
                    @rank = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("gameSlug", @game_slug)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("rank", @rank)
                    writer.write_enum_value("sortBy", @sort_by)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ##
                ## Gets the sortBy property value. Supported leaderboard sort field.
                ## @return a leaderboard_sort_by
                ##
                def sort_by
                    return @sort_by
                end
                ##
                ## Sets the sortBy property value. Supported leaderboard sort field.
                ## @param value Value to set for the sortBy property.
                ## @return a void
                ##
                def sort_by=(value)
                    @sort_by = value
                end
                ##
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ##
                def timestamp
                    return @timestamp
                end
                ##
                ## Sets the timestamp property value. The timestamp property
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ##
                def timestamp=(value)
                    @timestamp = value
                end

                ##
                # Composed type wrapper for classes LeaderboardRankResponseGameSlugMember1, string
                class LeaderboardRankResponseGameSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type LeaderboardRankResponseGameSlugMember1
                    @leaderboard_rank_response_game_slug_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a leaderboard_rank_response_game_slug
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeaderboardRankResponseGameSlug.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "LeaderboardRankResponse_gameSlugMember1" => lambda {|n| @leaderboard_rank_response_game_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeaderboardRankResponseGameSlugMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Gets the LeaderboardRankResponse_gameSlugMember1 property value. Composed type representation for type LeaderboardRankResponseGameSlugMember1
                    ## @return a leaderboard_rank_response_game_slug_member1
                    ##
                    def leaderboard_rank_response_game_slug_member1
                        return @leaderboard_rank_response_game_slug_member1
                    end
                    ##
                    ## Sets the LeaderboardRankResponse_gameSlugMember1 property value. Composed type representation for type LeaderboardRankResponseGameSlugMember1
                    ## @param value Value to set for the LeaderboardRankResponse_gameSlugMember1 property.
                    ## @return a void
                    ##
                    def leaderboard_rank_response_game_slug_member1=(value)
                        @leaderboard_rank_response_game_slug_member1 = value
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeaderboardRankResponse_gameSlugMember1", @leaderboard_rank_response_game_slug_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes LeaderboardRankResponseRankMember1, number
                class LeaderboardRankResponseRank
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type number
                    @integer
                    ##
                    # Composed type representation for type LeaderboardRankResponseRankMember1
                    @leaderboard_rank_response_rank_member1
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a leaderboard_rank_response_rank
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeaderboardRankResponseRank.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                            "LeaderboardRankResponse_rankMember1" => lambda {|n| @leaderboard_rank_response_rank_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeaderboardRankResponseRankMember1.create_from_discriminator_value(pn) }) },
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
                    ## Gets the LeaderboardRankResponse_rankMember1 property value. Composed type representation for type LeaderboardRankResponseRankMember1
                    ## @return a leaderboard_rank_response_rank_member1
                    ##
                    def leaderboard_rank_response_rank_member1
                        return @leaderboard_rank_response_rank_member1
                    end
                    ##
                    ## Sets the LeaderboardRankResponse_rankMember1 property value. Composed type representation for type LeaderboardRankResponseRankMember1
                    ## @param value Value to set for the LeaderboardRankResponse_rankMember1 property.
                    ## @return a void
                    ##
                    def leaderboard_rank_response_rank_member1=(value)
                        @leaderboard_rank_response_rank_member1 = value
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_number_value("integer", @integer)
                        writer.write_object_value("LeaderboardRankResponse_rankMember1", @leaderboard_rank_response_rank_member1)
                    end
                end
            end
        end
    end
end
