require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe team profile.
            class ApiTeamProfile
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The avatarUrl property
                @avatar_url
                ## 
                # The bannerUrl property
                @banner_url
                ## 
                # The createdAt property
                @created_at
                ## 
                # The description property
                @description
                ## 
                # The draws property
                @draws
                ## 
                # The experience property
                @experience
                ## 
                # The gameId property
                @game_id
                ## 
                # Team ID.
                @id
                ## 
                # The isMember property
                @is_member
                ## 
                # The losses property
                @losses
                ## 
                # The matchesPlayed property
                @matches_played
                ## 
                # The memberCount property
                @member_count
                ## 
                # Team name.
                @name
                ## 
                # The organizationId property
                @organization_id
                ## 
                # The slug property
                @slug
                ## 
                # The tag property
                @tag
                ## 
                # Public profile visibility setting.
                @visibility
                ## 
                # The wins property
                @wins
                ## 
                ## Gets the avatarUrl property value. The avatarUrl property
                ## @return a api_team_profile_avatar_url
                ## 
                def avatar_url
                    return @avatar_url
                end
                ## 
                ## Sets the avatarUrl property value. The avatarUrl property
                ## @param value Value to set for the avatarUrl property.
                ## @return a void
                ## 
                def avatar_url=(value)
                    @avatar_url = value
                end
                ## 
                ## Gets the bannerUrl property value. The bannerUrl property
                ## @return a api_team_profile_banner_url
                ## 
                def banner_url
                    return @banner_url
                end
                ## 
                ## Sets the bannerUrl property value. The bannerUrl property
                ## @param value Value to set for the bannerUrl property.
                ## @return a void
                ## 
                def banner_url=(value)
                    @banner_url = value
                end
                ## 
                ## Gets the createdAt property value. The createdAt property
                ## @return a api_team_profile_created_at
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. The createdAt property
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_team_profile
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiTeamProfile.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a api_team_profile_description
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the draws property value. The draws property
                ## @return a integer
                ## 
                def draws
                    return @draws
                end
                ## 
                ## Sets the draws property value. The draws property
                ## @param value Value to set for the draws property.
                ## @return a void
                ## 
                def draws=(value)
                    @draws = value
                end
                ## 
                ## Gets the experience property value. The experience property
                ## @return a double
                ## 
                def experience
                    return @experience
                end
                ## 
                ## Sets the experience property value. The experience property
                ## @param value Value to set for the experience property.
                ## @return a void
                ## 
                def experience=(value)
                    @experience = value
                end
                ## 
                ## Gets the gameId property value. The gameId property
                ## @return a api_team_profile_game_id
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
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileAvatarUrl.create_from_discriminator_value(pn) }) },
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileBannerUrl.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileCreatedAt.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileDescription.create_from_discriminator_value(pn) }) },
                        "draws" => lambda {|n| @draws = n.get_number_value() },
                        "experience" => lambda {|n| @experience = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "gameId" => lambda {|n| @game_id = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileGameId.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isMember" => lambda {|n| @is_member = n.get_boolean_value() },
                        "losses" => lambda {|n| @losses = n.get_number_value() },
                        "matchesPlayed" => lambda {|n| @matches_played = n.get_number_value() },
                        "memberCount" => lambda {|n| @member_count = n.get_number_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "organizationId" => lambda {|n| @organization_id = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileOrganizationId.create_from_discriminator_value(pn) }) },
                        "slug" => lambda {|n| @slug = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileSlug.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_object_value(lambda {|pn| ApiTeamProfile::ApiTeamProfileTag.create_from_discriminator_value(pn) }) },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::ProfileVisibility) },
                        "wins" => lambda {|n| @wins = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the id property value. Team ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Team ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isMember property value. The isMember property
                ## @return a boolean
                ## 
                def is_member
                    return @is_member
                end
                ## 
                ## Sets the isMember property value. The isMember property
                ## @param value Value to set for the isMember property.
                ## @return a void
                ## 
                def is_member=(value)
                    @is_member = value
                end
                ## 
                ## Gets the losses property value. The losses property
                ## @return a integer
                ## 
                def losses
                    return @losses
                end
                ## 
                ## Sets the losses property value. The losses property
                ## @param value Value to set for the losses property.
                ## @return a void
                ## 
                def losses=(value)
                    @losses = value
                end
                ## 
                ## Gets the matchesPlayed property value. The matchesPlayed property
                ## @return a integer
                ## 
                def matches_played
                    return @matches_played
                end
                ## 
                ## Sets the matchesPlayed property value. The matchesPlayed property
                ## @param value Value to set for the matchesPlayed property.
                ## @return a void
                ## 
                def matches_played=(value)
                    @matches_played = value
                end
                ## 
                ## Gets the memberCount property value. The memberCount property
                ## @return a integer
                ## 
                def member_count
                    return @member_count
                end
                ## 
                ## Sets the memberCount property value. The memberCount property
                ## @param value Value to set for the memberCount property.
                ## @return a void
                ## 
                def member_count=(value)
                    @member_count = value
                end
                ## 
                ## Gets the name property value. Team name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Team name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the organizationId property value. The organizationId property
                ## @return a api_team_profile_organization_id
                ## 
                def organization_id
                    return @organization_id
                end
                ## 
                ## Sets the organizationId property value. The organizationId property
                ## @param value Value to set for the organizationId property.
                ## @return a void
                ## 
                def organization_id=(value)
                    @organization_id = value
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
                    writer.write_object_value("description", @description)
                    writer.write_number_value("draws", @draws)
                    writer.write_object_value("experience", @experience)
                    writer.write_object_value("gameId", @game_id)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isMember", @is_member)
                    writer.write_number_value("losses", @losses)
                    writer.write_number_value("matchesPlayed", @matches_played)
                    writer.write_number_value("memberCount", @member_count)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("organizationId", @organization_id)
                    writer.write_object_value("slug", @slug)
                    writer.write_object_value("tag", @tag)
                    writer.write_enum_value("visibility", @visibility)
                    writer.write_number_value("wins", @wins)
                end
                ## 
                ## Gets the slug property value. The slug property
                ## @return a api_team_profile_slug
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. The slug property
                ## @param value Value to set for the slug property.
                ## @return a void
                ## 
                def slug=(value)
                    @slug = value
                end
                ## 
                ## Gets the tag property value. The tag property
                ## @return a api_team_profile_tag
                ## 
                def tag
                    return @tag
                end
                ## 
                ## Sets the tag property value. The tag property
                ## @param value Value to set for the tag property.
                ## @return a void
                ## 
                def tag=(value)
                    @tag = value
                end
                ## 
                ## Gets the visibility property value. Public profile visibility setting.
                ## @return a profile_visibility
                ## 
                def visibility
                    return @visibility
                end
                ## 
                ## Sets the visibility property value. Public profile visibility setting.
                ## @param value Value to set for the visibility property.
                ## @return a void
                ## 
                def visibility=(value)
                    @visibility = value
                end
                ## 
                ## Gets the wins property value. The wins property
                ## @return a integer
                ## 
                def wins
                    return @wins
                end
                ## 
                ## Sets the wins property value. The wins property
                ## @param value Value to set for the wins property.
                ## @return a void
                ## 
                def wins=(value)
                    @wins = value
                end

                ## 
                # Composed type wrapper for classes ApiTeamProfileAvatarUrlMember1, string
                class ApiTeamProfileAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileAvatarUrlMember1
                    @api_team_profile_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_avatarUrlMember1 property value. Composed type representation for type ApiTeamProfileAvatarUrlMember1
                    ## @return a api_team_profile_avatar_url_member1
                    ## 
                    def api_team_profile_avatar_url_member1
                        return @api_team_profile_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_avatarUrlMember1 property value. Composed type representation for type ApiTeamProfileAvatarUrlMember1
                    ## @param value Value to set for the ApiTeamProfile_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_avatar_url_member1=(value)
                        @api_team_profile_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_avatarUrlMember1" => lambda {|n| @api_team_profile_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileAvatarUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_avatarUrlMember1", @api_team_profile_avatar_url_member1)
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
                # Composed type wrapper for classes ApiTeamProfileBannerUrlMember1, string
                class ApiTeamProfileBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileBannerUrlMember1
                    @api_team_profile_banner_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_bannerUrlMember1 property value. Composed type representation for type ApiTeamProfileBannerUrlMember1
                    ## @return a api_team_profile_banner_url_member1
                    ## 
                    def api_team_profile_banner_url_member1
                        return @api_team_profile_banner_url_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_bannerUrlMember1 property value. Composed type representation for type ApiTeamProfileBannerUrlMember1
                    ## @param value Value to set for the ApiTeamProfile_bannerUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_banner_url_member1=(value)
                        @api_team_profile_banner_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_banner_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileBannerUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_bannerUrlMember1" => lambda {|n| @api_team_profile_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileBannerUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_bannerUrlMember1", @api_team_profile_banner_url_member1)
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
                # Composed type wrapper for classes ApiTeamProfileCreatedAtMember1, string
                class ApiTeamProfileCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileCreatedAtMember1
                    @api_team_profile_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_createdAtMember1 property value. Composed type representation for type ApiTeamProfileCreatedAtMember1
                    ## @return a api_team_profile_created_at_member1
                    ## 
                    def api_team_profile_created_at_member1
                        return @api_team_profile_created_at_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_createdAtMember1 property value. Composed type representation for type ApiTeamProfileCreatedAtMember1
                    ## @param value Value to set for the ApiTeamProfile_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_created_at_member1=(value)
                        @api_team_profile_created_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_createdAtMember1" => lambda {|n| @api_team_profile_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileCreatedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_createdAtMember1", @api_team_profile_created_at_member1)
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
                # Composed type wrapper for classes ApiTeamProfileDescriptionMember1, string
                class ApiTeamProfileDescription
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileDescriptionMember1
                    @api_team_profile_description_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_descriptionMember1 property value. Composed type representation for type ApiTeamProfileDescriptionMember1
                    ## @return a api_team_profile_description_member1
                    ## 
                    def api_team_profile_description_member1
                        return @api_team_profile_description_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_descriptionMember1 property value. Composed type representation for type ApiTeamProfileDescriptionMember1
                    ## @param value Value to set for the ApiTeamProfile_descriptionMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_description_member1=(value)
                        @api_team_profile_description_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_description
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileDescription.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_descriptionMember1" => lambda {|n| @api_team_profile_description_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileDescriptionMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_descriptionMember1", @api_team_profile_description_member1)
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
                # Composed type wrapper for classes ApiTeamProfileGameIdMember1, string
                class ApiTeamProfileGameId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileGameIdMember1
                    @api_team_profile_game_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_gameIdMember1 property value. Composed type representation for type ApiTeamProfileGameIdMember1
                    ## @return a api_team_profile_game_id_member1
                    ## 
                    def api_team_profile_game_id_member1
                        return @api_team_profile_game_id_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_gameIdMember1 property value. Composed type representation for type ApiTeamProfileGameIdMember1
                    ## @param value Value to set for the ApiTeamProfile_gameIdMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_game_id_member1=(value)
                        @api_team_profile_game_id_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_game_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileGameId.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_gameIdMember1" => lambda {|n| @api_team_profile_game_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileGameIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_gameIdMember1", @api_team_profile_game_id_member1)
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
                # Composed type wrapper for classes ApiTeamProfileOrganizationIdMember1, string
                class ApiTeamProfileOrganizationId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileOrganizationIdMember1
                    @api_team_profile_organization_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_organizationIdMember1 property value. Composed type representation for type ApiTeamProfileOrganizationIdMember1
                    ## @return a api_team_profile_organization_id_member1
                    ## 
                    def api_team_profile_organization_id_member1
                        return @api_team_profile_organization_id_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_organizationIdMember1 property value. Composed type representation for type ApiTeamProfileOrganizationIdMember1
                    ## @param value Value to set for the ApiTeamProfile_organizationIdMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_organization_id_member1=(value)
                        @api_team_profile_organization_id_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_organization_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileOrganizationId.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_organizationIdMember1" => lambda {|n| @api_team_profile_organization_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileOrganizationIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_organizationIdMember1", @api_team_profile_organization_id_member1)
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
                # Composed type wrapper for classes ApiTeamProfileSlugMember1, string
                class ApiTeamProfileSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileSlugMember1
                    @api_team_profile_slug_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_slugMember1 property value. Composed type representation for type ApiTeamProfileSlugMember1
                    ## @return a api_team_profile_slug_member1
                    ## 
                    def api_team_profile_slug_member1
                        return @api_team_profile_slug_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_slugMember1 property value. Composed type representation for type ApiTeamProfileSlugMember1
                    ## @param value Value to set for the ApiTeamProfile_slugMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_slug_member1=(value)
                        @api_team_profile_slug_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_slug
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileSlug.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_slugMember1" => lambda {|n| @api_team_profile_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileSlugMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_slugMember1", @api_team_profile_slug_member1)
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
                # Composed type wrapper for classes ApiTeamProfileTagMember1, string
                class ApiTeamProfileTag
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamProfileTagMember1
                    @api_team_profile_tag_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamProfile_tagMember1 property value. Composed type representation for type ApiTeamProfileTagMember1
                    ## @return a api_team_profile_tag_member1
                    ## 
                    def api_team_profile_tag_member1
                        return @api_team_profile_tag_member1
                    end
                    ## 
                    ## Sets the ApiTeamProfile_tagMember1 property value. Composed type representation for type ApiTeamProfileTagMember1
                    ## @param value Value to set for the ApiTeamProfile_tagMember1 property.
                    ## @return a void
                    ## 
                    def api_team_profile_tag_member1=(value)
                        @api_team_profile_tag_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_profile_tag
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamProfileTag.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamProfile_tagMember1" => lambda {|n| @api_team_profile_tag_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamProfileTagMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiTeamProfile_tagMember1", @api_team_profile_tag_member1)
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
