require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Summary view of a league for discovery results.
            class LeagueSummary
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # League avatar image URL.
                @avatar_url
                ## 
                # League banner image URL.
                @banner_url
                ## 
                # Creation timestamp (epoch milliseconds).
                @created_at
                ## 
                # League description.
                @description
                ## 
                # Games associated with the league.
                @games
                ## 
                # League ID.
                @id
                ## 
                # Whether the league is featured.
                @is_featured
                ## 
                # Whether the league is verified.
                @is_verified
                ## 
                # League display name.
                @name
                ## 
                # Aggregate season state across the league's games.
                @season_status
                ## 
                # URL-friendly league identifier.
                @slug
                ## 
                # League status.
                @status
                ## 
                # Number of teams in the league.
                @team_count
                ## 
                ## Gets the avatarUrl property value. League avatar image URL.
                ## @return a league_summary_avatar_url
                ## 
                def avatar_url
                    return @avatar_url
                end
                ## 
                ## Sets the avatarUrl property value. League avatar image URL.
                ## @param value Value to set for the avatarUrl property.
                ## @return a void
                ## 
                def avatar_url=(value)
                    @avatar_url = value
                end
                ## 
                ## Gets the bannerUrl property value. League banner image URL.
                ## @return a league_summary_banner_url
                ## 
                def banner_url
                    return @banner_url
                end
                ## 
                ## Sets the bannerUrl property value. League banner image URL.
                ## @param value Value to set for the bannerUrl property.
                ## @return a void
                ## 
                def banner_url=(value)
                    @banner_url = value
                end
                ## 
                ## Gets the createdAt property value. Creation timestamp (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Creation timestamp (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueSummary.new
                end
                ## 
                ## Gets the description property value. League description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. League description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the games property value. Games associated with the league.
                ## @return a league_summary_games
                ## 
                def games
                    return @games
                end
                ## 
                ## Sets the games property value. Games associated with the league.
                ## @param value Value to set for the games property.
                ## @return a void
                ## 
                def games=(value)
                    @games = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| LeagueSummary::LeagueSummaryAvatarUrl.create_from_discriminator_value(pn) }) },
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| LeagueSummary::LeagueSummaryBannerUrl.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "games" => lambda {|n| @games = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSummaryGames.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isFeatured" => lambda {|n| @is_featured = n.get_boolean_value() },
                        "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "seasonStatus" => lambda {|n| @season_status = n.get_enum_value(TeamBattlesSdk::Generated::Models::LeagueSummarySeasonStatus) },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_string_value() },
                        "teamCount" => lambda {|n| @team_count = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the id property value. League ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. League ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isFeatured property value. Whether the league is featured.
                ## @return a boolean
                ## 
                def is_featured
                    return @is_featured
                end
                ## 
                ## Sets the isFeatured property value. Whether the league is featured.
                ## @param value Value to set for the isFeatured property.
                ## @return a void
                ## 
                def is_featured=(value)
                    @is_featured = value
                end
                ## 
                ## Gets the isVerified property value. Whether the league is verified.
                ## @return a boolean
                ## 
                def is_verified
                    return @is_verified
                end
                ## 
                ## Sets the isVerified property value. Whether the league is verified.
                ## @param value Value to set for the isVerified property.
                ## @return a void
                ## 
                def is_verified=(value)
                    @is_verified = value
                end
                ## 
                ## Gets the name property value. League display name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. League display name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the seasonStatus property value. Aggregate season state across the league's games.
                ## @return a league_summary_season_status
                ## 
                def season_status
                    return @season_status
                end
                ## 
                ## Sets the seasonStatus property value. Aggregate season state across the league's games.
                ## @param value Value to set for the seasonStatus property.
                ## @return a void
                ## 
                def season_status=(value)
                    @season_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_object_value("bannerUrl", @banner_url)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("description", @description)
                    writer.write_collection_of_object_values("games", @games)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isFeatured", @is_featured)
                    writer.write_boolean_value("isVerified", @is_verified)
                    writer.write_string_value("name", @name)
                    writer.write_enum_value("seasonStatus", @season_status)
                    writer.write_string_value("slug", @slug)
                    writer.write_string_value("status", @status)
                    writer.write_number_value("teamCount", @team_count)
                end
                ## 
                ## Gets the slug property value. URL-friendly league identifier.
                ## @return a string
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. URL-friendly league identifier.
                ## @param value Value to set for the slug property.
                ## @return a void
                ## 
                def slug=(value)
                    @slug = value
                end
                ## 
                ## Gets the status property value. League status.
                ## @return a string
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. League status.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the teamCount property value. Number of teams in the league.
                ## @return a integer
                ## 
                def team_count
                    return @team_count
                end
                ## 
                ## Sets the teamCount property value. Number of teams in the league.
                ## @param value Value to set for the teamCount property.
                ## @return a void
                ## 
                def team_count=(value)
                    @team_count = value
                end

                ## 
                # Composed type wrapper for classes LeagueSummaryAvatarUrlMember1, string
                class LeagueSummaryAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type LeagueSummaryAvatarUrlMember1
                    @league_summary_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a league_summary_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeagueSummaryAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "LeagueSummary_avatarUrlMember1" => lambda {|n| @league_summary_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSummaryAvatarUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the LeagueSummary_avatarUrlMember1 property value. Composed type representation for type LeagueSummaryAvatarUrlMember1
                    ## @return a league_summary_avatar_url_member1
                    ## 
                    def league_summary_avatar_url_member1
                        return @league_summary_avatar_url_member1
                    end
                    ## 
                    ## Sets the LeagueSummary_avatarUrlMember1 property value. Composed type representation for type LeagueSummaryAvatarUrlMember1
                    ## @param value Value to set for the LeagueSummary_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def league_summary_avatar_url_member1=(value)
                        @league_summary_avatar_url_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeagueSummary_avatarUrlMember1", @league_summary_avatar_url_member1)
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
                # Composed type wrapper for classes LeagueSummaryBannerUrlMember1, string
                class LeagueSummaryBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type LeagueSummaryBannerUrlMember1
                    @league_summary_banner_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a league_summary_banner_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeagueSummaryBannerUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "LeagueSummary_bannerUrlMember1" => lambda {|n| @league_summary_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSummaryBannerUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the LeagueSummary_bannerUrlMember1 property value. Composed type representation for type LeagueSummaryBannerUrlMember1
                    ## @return a league_summary_banner_url_member1
                    ## 
                    def league_summary_banner_url_member1
                        return @league_summary_banner_url_member1
                    end
                    ## 
                    ## Sets the LeagueSummary_bannerUrlMember1 property value. Composed type representation for type LeagueSummaryBannerUrlMember1
                    ## @param value Value to set for the LeagueSummary_bannerUrlMember1 property.
                    ## @return a void
                    ## 
                    def league_summary_banner_url_member1=(value)
                        @league_summary_banner_url_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeagueSummary_bannerUrlMember1", @league_summary_banner_url_member1)
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
