require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Public profile for a single league.
            class LeagueProfile
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Currently active seasons.
                @active_seasons
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
                # URL-friendly league identifier.
                @slug
                ## 
                # Number of staff members.
                @staff_count
                ## 
                # League status (e.g. active, inactive).
                @status
                ## 
                # Number of teams in the league.
                @team_count
                ## 
                ## Gets the activeSeasons property value. Currently active seasons.
                ## @return a league_profile_active_seasons
                ## 
                def active_seasons
                    return @active_seasons
                end
                ## 
                ## Sets the activeSeasons property value. Currently active seasons.
                ## @param value Value to set for the activeSeasons property.
                ## @return a void
                ## 
                def active_seasons=(value)
                    @active_seasons = value
                end
                ## 
                ## Gets the avatarUrl property value. League avatar image URL.
                ## @return a league_profile_avatar_url
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
                ## @return a league_profile_banner_url
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
                ## @return a league_profile
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueProfile.new
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
                ## @return a league_profile_games
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
                        "activeSeasons" => lambda {|n| @active_seasons = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueProfileActiveSeasons.create_from_discriminator_value(pn) }) },
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| LeagueProfile::LeagueProfileAvatarUrl.create_from_discriminator_value(pn) }) },
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| LeagueProfile::LeagueProfileBannerUrl.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "games" => lambda {|n| @games = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueProfileGames.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isFeatured" => lambda {|n| @is_featured = n.get_boolean_value() },
                        "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "staffCount" => lambda {|n| @staff_count = n.get_number_value() },
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("activeSeasons", @active_seasons)
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_object_value("bannerUrl", @banner_url)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("description", @description)
                    writer.write_collection_of_object_values("games", @games)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isFeatured", @is_featured)
                    writer.write_boolean_value("isVerified", @is_verified)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("slug", @slug)
                    writer.write_number_value("staffCount", @staff_count)
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
                ## Gets the staffCount property value. Number of staff members.
                ## @return a integer
                ## 
                def staff_count
                    return @staff_count
                end
                ## 
                ## Sets the staffCount property value. Number of staff members.
                ## @param value Value to set for the staffCount property.
                ## @return a void
                ## 
                def staff_count=(value)
                    @staff_count = value
                end
                ## 
                ## Gets the status property value. League status (e.g. active, inactive).
                ## @return a string
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. League status (e.g. active, inactive).
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
                # Composed type wrapper for classes LeagueProfileAvatarUrlMember1, string
                class LeagueProfileAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type LeagueProfileAvatarUrlMember1
                    @league_profile_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a league_profile_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeagueProfileAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "LeagueProfile_avatarUrlMember1" => lambda {|n| @league_profile_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueProfileAvatarUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the LeagueProfile_avatarUrlMember1 property value. Composed type representation for type LeagueProfileAvatarUrlMember1
                    ## @return a league_profile_avatar_url_member1
                    ## 
                    def league_profile_avatar_url_member1
                        return @league_profile_avatar_url_member1
                    end
                    ## 
                    ## Sets the LeagueProfile_avatarUrlMember1 property value. Composed type representation for type LeagueProfileAvatarUrlMember1
                    ## @param value Value to set for the LeagueProfile_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def league_profile_avatar_url_member1=(value)
                        @league_profile_avatar_url_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeagueProfile_avatarUrlMember1", @league_profile_avatar_url_member1)
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
                # Composed type wrapper for classes LeagueProfileBannerUrlMember1, string
                class LeagueProfileBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type LeagueProfileBannerUrlMember1
                    @league_profile_banner_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a league_profile_banner_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeagueProfileBannerUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "LeagueProfile_bannerUrlMember1" => lambda {|n| @league_profile_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueProfileBannerUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the LeagueProfile_bannerUrlMember1 property value. Composed type representation for type LeagueProfileBannerUrlMember1
                    ## @return a league_profile_banner_url_member1
                    ## 
                    def league_profile_banner_url_member1
                        return @league_profile_banner_url_member1
                    end
                    ## 
                    ## Sets the LeagueProfile_bannerUrlMember1 property value. Composed type representation for type LeagueProfileBannerUrlMember1
                    ## @param value Value to set for the LeagueProfile_bannerUrlMember1 property.
                    ## @return a void
                    ## 
                    def league_profile_banner_url_member1=(value)
                        @league_profile_banner_url_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeagueProfile_bannerUrlMember1", @league_profile_banner_url_member1)
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
