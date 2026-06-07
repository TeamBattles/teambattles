require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # API-safe organization profile.
            class ApiOrganizationProfile
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
                # Organization ID.
                @id
                ##
                # The isMember property
                @is_member
                ##
                # The isVerified property
                @is_verified
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
                # Organization name.
                @name
                ##
                # The slug property
                @slug
                ##
                # The tag property
                @tag
                ##
                # The teamCount property
                @team_count
                ##
                # Public profile visibility setting.
                @visibility
                ##
                # The wins property
                @wins
                ##
                ## Gets the avatarUrl property value. The avatarUrl property
                ## @return a api_organization_profile_avatar_url
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
                ## @return a api_organization_profile_banner_url
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
                ## @return a api_organization_profile_created_at
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
                ## @return a api_organization_profile
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiOrganizationProfile.new
                end
                ##
                ## Gets the description property value. The description property
                ## @return a api_organization_profile_description
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
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiOrganizationProfile::ApiOrganizationProfileAvatarUrl.create_from_discriminator_value(pn) }) },
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| ApiOrganizationProfile::ApiOrganizationProfileBannerUrl.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| ApiOrganizationProfile::ApiOrganizationProfileCreatedAt.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| ApiOrganizationProfile::ApiOrganizationProfileDescription.create_from_discriminator_value(pn) }) },
                        "draws" => lambda {|n| @draws = n.get_number_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isMember" => lambda {|n| @is_member = n.get_boolean_value() },
                        "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                        "losses" => lambda {|n| @losses = n.get_number_value() },
                        "matchesPlayed" => lambda {|n| @matches_played = n.get_number_value() },
                        "memberCount" => lambda {|n| @member_count = n.get_number_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_object_value(lambda {|pn| ApiOrganizationProfile::ApiOrganizationProfileSlug.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_object_value(lambda {|pn| ApiOrganizationProfile::ApiOrganizationProfileTag.create_from_discriminator_value(pn) }) },
                        "teamCount" => lambda {|n| @team_count = n.get_number_value() },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::ProfileVisibility) },
                        "wins" => lambda {|n| @wins = n.get_number_value() },
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
                ## Gets the isVerified property value. The isVerified property
                ## @return a boolean
                ##
                def is_verified
                    return @is_verified
                end
                ##
                ## Sets the isVerified property value. The isVerified property
                ## @param value Value to set for the isVerified property.
                ## @return a void
                ##
                def is_verified=(value)
                    @is_verified = value
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
                ## Gets the name property value. Organization name.
                ## @return a string
                ##
                def name
                    return @name
                end
                ##
                ## Sets the name property value. Organization name.
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
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_object_value("bannerUrl", @banner_url)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_object_value("description", @description)
                    writer.write_number_value("draws", @draws)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isMember", @is_member)
                    writer.write_boolean_value("isVerified", @is_verified)
                    writer.write_number_value("losses", @losses)
                    writer.write_number_value("matchesPlayed", @matches_played)
                    writer.write_number_value("memberCount", @member_count)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("slug", @slug)
                    writer.write_object_value("tag", @tag)
                    writer.write_number_value("teamCount", @team_count)
                    writer.write_enum_value("visibility", @visibility)
                    writer.write_number_value("wins", @wins)
                end
                ##
                ## Gets the slug property value. The slug property
                ## @return a api_organization_profile_slug
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
                ## @return a api_organization_profile_tag
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
                ## Gets the teamCount property value. The teamCount property
                ## @return a integer
                ##
                def team_count
                    return @team_count
                end
                ##
                ## Sets the teamCount property value. The teamCount property
                ## @param value Value to set for the teamCount property.
                ## @return a void
                ##
                def team_count=(value)
                    @team_count = value
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
                # Composed type wrapper for classes ApiOrganizationProfileAvatarUrlMember1, string
                class ApiOrganizationProfileAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationProfileAvatarUrlMember1
                    @api_organization_profile_avatar_url_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationProfile_avatarUrlMember1 property value. Composed type representation for type ApiOrganizationProfileAvatarUrlMember1
                    ## @return a api_organization_profile_avatar_url_member1
                    ##
                    def api_organization_profile_avatar_url_member1
                        return @api_organization_profile_avatar_url_member1
                    end
                    ##
                    ## Sets the ApiOrganizationProfile_avatarUrlMember1 property value. Composed type representation for type ApiOrganizationProfileAvatarUrlMember1
                    ## @param value Value to set for the ApiOrganizationProfile_avatarUrlMember1 property.
                    ## @return a void
                    ##
                    def api_organization_profile_avatar_url_member1=(value)
                        @api_organization_profile_avatar_url_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_profile_avatar_url
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationProfileAvatarUrl.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationProfile_avatarUrlMember1" => lambda {|n| @api_organization_profile_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfileAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationProfile_avatarUrlMember1", @api_organization_profile_avatar_url_member1)
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
                # Composed type wrapper for classes ApiOrganizationProfileBannerUrlMember1, string
                class ApiOrganizationProfileBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationProfileBannerUrlMember1
                    @api_organization_profile_banner_url_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationProfile_bannerUrlMember1 property value. Composed type representation for type ApiOrganizationProfileBannerUrlMember1
                    ## @return a api_organization_profile_banner_url_member1
                    ##
                    def api_organization_profile_banner_url_member1
                        return @api_organization_profile_banner_url_member1
                    end
                    ##
                    ## Sets the ApiOrganizationProfile_bannerUrlMember1 property value. Composed type representation for type ApiOrganizationProfileBannerUrlMember1
                    ## @param value Value to set for the ApiOrganizationProfile_bannerUrlMember1 property.
                    ## @return a void
                    ##
                    def api_organization_profile_banner_url_member1=(value)
                        @api_organization_profile_banner_url_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_profile_banner_url
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationProfileBannerUrl.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationProfile_bannerUrlMember1" => lambda {|n| @api_organization_profile_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfileBannerUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationProfile_bannerUrlMember1", @api_organization_profile_banner_url_member1)
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
                # Composed type wrapper for classes ApiOrganizationProfileCreatedAtMember1, string
                class ApiOrganizationProfileCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationProfileCreatedAtMember1
                    @api_organization_profile_created_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationProfile_createdAtMember1 property value. Composed type representation for type ApiOrganizationProfileCreatedAtMember1
                    ## @return a api_organization_profile_created_at_member1
                    ##
                    def api_organization_profile_created_at_member1
                        return @api_organization_profile_created_at_member1
                    end
                    ##
                    ## Sets the ApiOrganizationProfile_createdAtMember1 property value. Composed type representation for type ApiOrganizationProfileCreatedAtMember1
                    ## @param value Value to set for the ApiOrganizationProfile_createdAtMember1 property.
                    ## @return a void
                    ##
                    def api_organization_profile_created_at_member1=(value)
                        @api_organization_profile_created_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_profile_created_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationProfileCreatedAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationProfile_createdAtMember1" => lambda {|n| @api_organization_profile_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfileCreatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationProfile_createdAtMember1", @api_organization_profile_created_at_member1)
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
                # Composed type wrapper for classes ApiOrganizationProfileDescriptionMember1, string
                class ApiOrganizationProfileDescription
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationProfileDescriptionMember1
                    @api_organization_profile_description_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationProfile_descriptionMember1 property value. Composed type representation for type ApiOrganizationProfileDescriptionMember1
                    ## @return a api_organization_profile_description_member1
                    ##
                    def api_organization_profile_description_member1
                        return @api_organization_profile_description_member1
                    end
                    ##
                    ## Sets the ApiOrganizationProfile_descriptionMember1 property value. Composed type representation for type ApiOrganizationProfileDescriptionMember1
                    ## @param value Value to set for the ApiOrganizationProfile_descriptionMember1 property.
                    ## @return a void
                    ##
                    def api_organization_profile_description_member1=(value)
                        @api_organization_profile_description_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_profile_description
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationProfileDescription.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationProfile_descriptionMember1" => lambda {|n| @api_organization_profile_description_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfileDescriptionMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationProfile_descriptionMember1", @api_organization_profile_description_member1)
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
                # Composed type wrapper for classes ApiOrganizationProfileSlugMember1, string
                class ApiOrganizationProfileSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationProfileSlugMember1
                    @api_organization_profile_slug_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationProfile_slugMember1 property value. Composed type representation for type ApiOrganizationProfileSlugMember1
                    ## @return a api_organization_profile_slug_member1
                    ##
                    def api_organization_profile_slug_member1
                        return @api_organization_profile_slug_member1
                    end
                    ##
                    ## Sets the ApiOrganizationProfile_slugMember1 property value. Composed type representation for type ApiOrganizationProfileSlugMember1
                    ## @param value Value to set for the ApiOrganizationProfile_slugMember1 property.
                    ## @return a void
                    ##
                    def api_organization_profile_slug_member1=(value)
                        @api_organization_profile_slug_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_profile_slug
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationProfileSlug.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationProfile_slugMember1" => lambda {|n| @api_organization_profile_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfileSlugMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationProfile_slugMember1", @api_organization_profile_slug_member1)
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
                # Composed type wrapper for classes ApiOrganizationProfileTagMember1, string
                class ApiOrganizationProfileTag
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationProfileTagMember1
                    @api_organization_profile_tag_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationProfile_tagMember1 property value. Composed type representation for type ApiOrganizationProfileTagMember1
                    ## @return a api_organization_profile_tag_member1
                    ##
                    def api_organization_profile_tag_member1
                        return @api_organization_profile_tag_member1
                    end
                    ##
                    ## Sets the ApiOrganizationProfile_tagMember1 property value. Composed type representation for type ApiOrganizationProfileTagMember1
                    ## @param value Value to set for the ApiOrganizationProfile_tagMember1 property.
                    ## @return a void
                    ##
                    def api_organization_profile_tag_member1=(value)
                        @api_organization_profile_tag_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_profile_tag
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationProfileTag.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationProfile_tagMember1" => lambda {|n| @api_organization_profile_tag_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationProfileTagMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationProfile_tagMember1", @api_organization_profile_tag_member1)
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
