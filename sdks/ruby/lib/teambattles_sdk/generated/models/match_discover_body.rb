require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Filters and cursor pagination for public open-match discovery.
            class MatchDiscoverBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The cursor property
                @cursor
                ## 
                # The gameId property
                @game_id
                ## 
                # The gameSlug property
                @game_slug
                ## 
                # The leagueId property
                @league_id
                ## 
                # The leagueSeasonId property
                @league_season_id
                ## 
                # The limit property
                @limit
                ## 
                # The matchType property
                @match_type
                ## 
                # The platform property
                @platform
                ## 
                # The region property
                @region
                ## 
                # The scheduledAfter property
                @scheduled_after
                ## 
                # The scheduledBefore property
                @scheduled_before
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
                ## Instantiates a new MatchDiscoverBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                    @limit = 50
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a match_discover_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MatchDiscoverBody.new
                end
                ## 
                ## Gets the cursor property value. The cursor property
                ## @return a match_discover_body_cursor
                ## 
                def cursor
                    return @cursor
                end
                ## 
                ## Sets the cursor property value. The cursor property
                ## @param value Value to set for the cursor property.
                ## @return a void
                ## 
                def cursor=(value)
                    @cursor = value
                end
                ## 
                ## Gets the gameId property value. The gameId property
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. The gameId property
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## Gets the gameSlug property value. The gameSlug property
                ## @return a string
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
                        "cursor" => lambda {|n| @cursor = n.get_object_value(lambda {|pn| MatchDiscoverBody::MatchDiscoverBodyCursor.create_from_discriminator_value(pn) }) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "gameSlug" => lambda {|n| @game_slug = n.get_string_value() },
                        "leagueId" => lambda {|n| @league_id = n.get_string_value() },
                        "leagueSeasonId" => lambda {|n| @league_season_id = n.get_string_value() },
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                        "matchType" => lambda {|n| @match_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::MatchDiscoverBodyMatchType) },
                        "platform" => lambda {|n| @platform = n.get_enum_value(TeamBattlesSdk::Generated::Models::MatchDiscoverBodyPlatform) },
                        "region" => lambda {|n| @region = n.get_enum_value(TeamBattlesSdk::Generated::Models::MatchDiscoverBodyRegion) },
                        "scheduledAfter" => lambda {|n| @scheduled_after = n.get_string_value() },
                        "scheduledBefore" => lambda {|n| @scheduled_before = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the leagueId property value. The leagueId property
                ## @return a string
                ## 
                def league_id
                    return @league_id
                end
                ## 
                ## Sets the leagueId property value. The leagueId property
                ## @param value Value to set for the leagueId property.
                ## @return a void
                ## 
                def league_id=(value)
                    @league_id = value
                end
                ## 
                ## Gets the leagueSeasonId property value. The leagueSeasonId property
                ## @return a string
                ## 
                def league_season_id
                    return @league_season_id
                end
                ## 
                ## Sets the leagueSeasonId property value. The leagueSeasonId property
                ## @param value Value to set for the leagueSeasonId property.
                ## @return a void
                ## 
                def league_season_id=(value)
                    @league_season_id = value
                end
                ## 
                ## Gets the limit property value. The limit property
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. The limit property
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Gets the matchType property value. The matchType property
                ## @return a match_discover_body_match_type
                ## 
                def match_type
                    return @match_type
                end
                ## 
                ## Sets the matchType property value. The matchType property
                ## @param value Value to set for the matchType property.
                ## @return a void
                ## 
                def match_type=(value)
                    @match_type = value
                end
                ## 
                ## Gets the platform property value. The platform property
                ## @return a match_discover_body_platform
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. The platform property
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Gets the region property value. The region property
                ## @return a match_discover_body_region
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. The region property
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Gets the scheduledAfter property value. The scheduledAfter property
                ## @return a string
                ## 
                def scheduled_after
                    return @scheduled_after
                end
                ## 
                ## Sets the scheduledAfter property value. The scheduledAfter property
                ## @param value Value to set for the scheduledAfter property.
                ## @return a void
                ## 
                def scheduled_after=(value)
                    @scheduled_after = value
                end
                ## 
                ## Gets the scheduledBefore property value. The scheduledBefore property
                ## @return a string
                ## 
                def scheduled_before
                    return @scheduled_before
                end
                ## 
                ## Sets the scheduledBefore property value. The scheduledBefore property
                ## @param value Value to set for the scheduledBefore property.
                ## @return a void
                ## 
                def scheduled_before=(value)
                    @scheduled_before = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("cursor", @cursor)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("gameSlug", @game_slug)
                    writer.write_string_value("leagueId", @league_id)
                    writer.write_string_value("leagueSeasonId", @league_season_id)
                    writer.write_number_value("limit", @limit)
                    writer.write_enum_value("matchType", @match_type)
                    writer.write_enum_value("platform", @platform)
                    writer.write_enum_value("region", @region)
                    writer.write_string_value("scheduledAfter", @scheduled_after)
                    writer.write_string_value("scheduledBefore", @scheduled_before)
                    writer.write_additional_data(@additional_data)
                end

                ## 
                # Composed type wrapper for classes MatchDiscoverBodyCursorMember1, string
                class MatchDiscoverBodyCursor
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type MatchDiscoverBodyCursorMember1
                    @match_discover_body_cursor_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a match_discover_body_cursor
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return MatchDiscoverBodyCursor.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "MatchDiscoverBody_cursorMember1" => lambda {|n| @match_discover_body_cursor_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::MatchDiscoverBodyCursorMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the MatchDiscoverBody_cursorMember1 property value. Composed type representation for type MatchDiscoverBodyCursorMember1
                    ## @return a match_discover_body_cursor_member1
                    ## 
                    def match_discover_body_cursor_member1
                        return @match_discover_body_cursor_member1
                    end
                    ## 
                    ## Sets the MatchDiscoverBody_cursorMember1 property value. Composed type representation for type MatchDiscoverBodyCursorMember1
                    ## @param value Value to set for the MatchDiscoverBody_cursorMember1 property.
                    ## @return a void
                    ## 
                    def match_discover_body_cursor_member1=(value)
                        @match_discover_body_cursor_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("MatchDiscoverBody_cursorMember1", @match_discover_body_cursor_member1)
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
