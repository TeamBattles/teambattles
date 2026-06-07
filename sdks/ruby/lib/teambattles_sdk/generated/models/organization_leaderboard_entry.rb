require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Organization leaderboard row.
            class OrganizationLeaderboardEntry
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The gameSlug property
                @game_slug
                ##
                # Organization ID.
                @id
                ##
                # Small API-safe organization summary.
                @organization
                ##
                # The rank property
                @rank
                ##
                # The stats property
                @stats
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a organization_leaderboard_entry
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return OrganizationLeaderboardEntry.new
                end
                ##
                ## Gets the gameSlug property value. The gameSlug property
                ## @return a organization_leaderboard_entry_game_slug
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
                        "gameSlug" => lambda {|n| @game_slug = n.get_object_value(lambda {|pn| OrganizationLeaderboardEntry::OrganizationLeaderboardEntryGameSlug.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "organization" => lambda {|n| @organization = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationSummary.create_from_discriminator_value(pn) }) },
                        "rank" => lambda {|n| @rank = n.get_number_value() },
                        "stats" => lambda {|n| @stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::OrganizationLeaderboardEntryStats.create_from_discriminator_value(pn) }) },
                    }
                end
                ##
                ## Gets the id property value. Organization ID.
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. Organization ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the organization property value. Small API-safe organization summary.
                ## @return a api_organization_summary
                ##
                def organization
                    return @organization
                end
                ##
                ## Sets the organization property value. Small API-safe organization summary.
                ## @param value Value to set for the organization property.
                ## @return a void
                ##
                def organization=(value)
                    @organization = value
                end
                ##
                ## Gets the rank property value. The rank property
                ## @return a integer
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
                    writer.write_object_value("organization", @organization)
                    writer.write_number_value("rank", @rank)
                    writer.write_object_value("stats", @stats)
                end
                ##
                ## Gets the stats property value. The stats property
                ## @return a organization_leaderboard_entry_stats
                ##
                def stats
                    return @stats
                end
                ##
                ## Sets the stats property value. The stats property
                ## @param value Value to set for the stats property.
                ## @return a void
                ##
                def stats=(value)
                    @stats = value
                end

                ##
                # Composed type wrapper for classes OrganizationLeaderboardEntryGameSlugMember1, string
                class OrganizationLeaderboardEntryGameSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type OrganizationLeaderboardEntryGameSlugMember1
                    @organization_leaderboard_entry_game_slug_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a organization_leaderboard_entry_game_slug
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return OrganizationLeaderboardEntryGameSlug.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "OrganizationLeaderboardEntry_gameSlugMember1" => lambda {|n| @organization_leaderboard_entry_game_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::OrganizationLeaderboardEntryGameSlugMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Gets the OrganizationLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardEntryGameSlugMember1
                    ## @return a organization_leaderboard_entry_game_slug_member1
                    ##
                    def organization_leaderboard_entry_game_slug_member1
                        return @organization_leaderboard_entry_game_slug_member1
                    end
                    ##
                    ## Sets the OrganizationLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardEntryGameSlugMember1
                    ## @param value Value to set for the OrganizationLeaderboardEntry_gameSlugMember1 property.
                    ## @return a void
                    ##
                    def organization_leaderboard_entry_game_slug_member1=(value)
                        @organization_leaderboard_entry_game_slug_member1 = value
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("OrganizationLeaderboardEntry_gameSlugMember1", @organization_leaderboard_entry_game_slug_member1)
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
