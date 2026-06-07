require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Organization leaderboard response.
            class OrganizationLeaderboardResponse
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The gameSlug property
                @game_slug
                ##
                # The organizations property
                @organizations
                ##
                # Supported leaderboard sort field.
                @sort_by
                ##
                # The timestamp property
                @timestamp
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a organization_leaderboard_response
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return OrganizationLeaderboardResponse.new
                end
                ##
                ## Gets the gameSlug property value. The gameSlug property
                ## @return a organization_leaderboard_response_game_slug
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
                        "gameSlug" => lambda {|n| @game_slug = n.get_object_value(lambda {|pn| OrganizationLeaderboardResponse::OrganizationLeaderboardResponseGameSlug.create_from_discriminator_value(pn) }) },
                        "organizations" => lambda {|n| @organizations = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::OrganizationLeaderboardEntry.create_from_discriminator_value(pn) }) },
                        "sortBy" => lambda {|n| @sort_by = n.get_enum_value(TeamBattlesSdk::Generated::Models::LeaderboardSortBy) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ##
                ## Gets the organizations property value. The organizations property
                ## @return a organization_leaderboard_entry
                ##
                def organizations
                    return @organizations
                end
                ##
                ## Sets the organizations property value. The organizations property
                ## @param value Value to set for the organizations property.
                ## @return a void
                ##
                def organizations=(value)
                    @organizations = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("gameSlug", @game_slug)
                    writer.write_collection_of_object_values("organizations", @organizations)
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
                # Composed type wrapper for classes OrganizationLeaderboardResponseGameSlugMember1, string
                class OrganizationLeaderboardResponseGameSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type OrganizationLeaderboardResponseGameSlugMember1
                    @organization_leaderboard_response_game_slug_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a organization_leaderboard_response_game_slug
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return OrganizationLeaderboardResponseGameSlug.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "OrganizationLeaderboardResponse_gameSlugMember1" => lambda {|n| @organization_leaderboard_response_game_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::OrganizationLeaderboardResponseGameSlugMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Gets the OrganizationLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardResponseGameSlugMember1
                    ## @return a organization_leaderboard_response_game_slug_member1
                    ##
                    def organization_leaderboard_response_game_slug_member1
                        return @organization_leaderboard_response_game_slug_member1
                    end
                    ##
                    ## Sets the OrganizationLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardResponseGameSlugMember1
                    ## @param value Value to set for the OrganizationLeaderboardResponse_gameSlugMember1 property.
                    ## @return a void
                    ##
                    def organization_leaderboard_response_game_slug_member1=(value)
                        @organization_leaderboard_response_game_slug_member1 = value
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("OrganizationLeaderboardResponse_gameSlugMember1", @organization_leaderboard_response_game_slug_member1)
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
            end
        end
    end
end
