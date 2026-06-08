require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe public user profile.
            class ApiUserProfile
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Avatar image URL, when set.
                @avatar_url
                ## 
                # Banner image URL, when set.
                @banner_url
                ## 
                # Public profile bio.
                @bio
                ## 
                # The createdAt property
                @created_at
                ## 
                # User ID.
                @id
                ## 
                # The isVerified property
                @is_verified
                ## 
                # Display name, when set.
                @name
                ## 
                # User handle, when set.
                @username
                ## 
                # Public profile visibility setting.
                @visibility
                ## 
                ## Gets the avatarUrl property value. Avatar image URL, when set.
                ## @return a api_user_profile_avatar_url
                ## 
                def avatar_url
                    return @avatar_url
                end
                ## 
                ## Sets the avatarUrl property value. Avatar image URL, when set.
                ## @param value Value to set for the avatarUrl property.
                ## @return a void
                ## 
                def avatar_url=(value)
                    @avatar_url = value
                end
                ## 
                ## Gets the bannerUrl property value. Banner image URL, when set.
                ## @return a api_user_profile_banner_url
                ## 
                def banner_url
                    return @banner_url
                end
                ## 
                ## Sets the bannerUrl property value. Banner image URL, when set.
                ## @param value Value to set for the bannerUrl property.
                ## @return a void
                ## 
                def banner_url=(value)
                    @banner_url = value
                end
                ## 
                ## Gets the bio property value. Public profile bio.
                ## @return a api_user_profile_bio
                ## 
                def bio
                    return @bio
                end
                ## 
                ## Sets the bio property value. Public profile bio.
                ## @param value Value to set for the bio property.
                ## @return a void
                ## 
                def bio=(value)
                    @bio = value
                end
                ## 
                ## Gets the createdAt property value. The createdAt property
                ## @return a api_user_profile_created_at
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
                ## @return a api_user_profile
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiUserProfile.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiUserProfile::ApiUserProfileAvatarUrl.create_from_discriminator_value(pn) }) },
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| ApiUserProfile::ApiUserProfileBannerUrl.create_from_discriminator_value(pn) }) },
                        "bio" => lambda {|n| @bio = n.get_object_value(lambda {|pn| ApiUserProfile::ApiUserProfileBio.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| ApiUserProfile::ApiUserProfileCreatedAt.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_object_value(lambda {|pn| ApiUserProfile::ApiUserProfileName.create_from_discriminator_value(pn) }) },
                        "username" => lambda {|n| @username = n.get_object_value(lambda {|pn| ApiUserProfile::ApiUserProfileUsername.create_from_discriminator_value(pn) }) },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::ProfileVisibility) },
                    }
                end
                ## 
                ## Gets the id property value. User ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. User ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
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
                ## Gets the name property value. Display name, when set.
                ## @return a api_user_profile_name
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Display name, when set.
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
                    writer.write_object_value("bio", @bio)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isVerified", @is_verified)
                    writer.write_object_value("name", @name)
                    writer.write_object_value("username", @username)
                    writer.write_enum_value("visibility", @visibility)
                end
                ## 
                ## Gets the username property value. User handle, when set.
                ## @return a api_user_profile_username
                ## 
                def username
                    return @username
                end
                ## 
                ## Sets the username property value. User handle, when set.
                ## @param value Value to set for the username property.
                ## @return a void
                ## 
                def username=(value)
                    @username = value
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
                # Composed type wrapper for classes ApiUserProfileAvatarUrlMember1, string
                class ApiUserProfileAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserProfileAvatarUrlMember1
                    @api_user_profile_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserProfile_avatarUrlMember1 property value. Composed type representation for type ApiUserProfileAvatarUrlMember1
                    ## @return a api_user_profile_avatar_url_member1
                    ## 
                    def api_user_profile_avatar_url_member1
                        return @api_user_profile_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiUserProfile_avatarUrlMember1 property value. Composed type representation for type ApiUserProfileAvatarUrlMember1
                    ## @param value Value to set for the ApiUserProfile_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_user_profile_avatar_url_member1=(value)
                        @api_user_profile_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_profile_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserProfileAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserProfile_avatarUrlMember1" => lambda {|n| @api_user_profile_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfileAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserProfile_avatarUrlMember1", @api_user_profile_avatar_url_member1)
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
                # Composed type wrapper for classes ApiUserProfileBannerUrlMember1, string
                class ApiUserProfileBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserProfileBannerUrlMember1
                    @api_user_profile_banner_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserProfile_bannerUrlMember1 property value. Composed type representation for type ApiUserProfileBannerUrlMember1
                    ## @return a api_user_profile_banner_url_member1
                    ## 
                    def api_user_profile_banner_url_member1
                        return @api_user_profile_banner_url_member1
                    end
                    ## 
                    ## Sets the ApiUserProfile_bannerUrlMember1 property value. Composed type representation for type ApiUserProfileBannerUrlMember1
                    ## @param value Value to set for the ApiUserProfile_bannerUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_user_profile_banner_url_member1=(value)
                        @api_user_profile_banner_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_profile_banner_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserProfileBannerUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserProfile_bannerUrlMember1" => lambda {|n| @api_user_profile_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfileBannerUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserProfile_bannerUrlMember1", @api_user_profile_banner_url_member1)
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
                # Composed type wrapper for classes ApiUserProfileBioMember1, string
                class ApiUserProfileBio
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserProfileBioMember1
                    @api_user_profile_bio_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserProfile_bioMember1 property value. Composed type representation for type ApiUserProfileBioMember1
                    ## @return a api_user_profile_bio_member1
                    ## 
                    def api_user_profile_bio_member1
                        return @api_user_profile_bio_member1
                    end
                    ## 
                    ## Sets the ApiUserProfile_bioMember1 property value. Composed type representation for type ApiUserProfileBioMember1
                    ## @param value Value to set for the ApiUserProfile_bioMember1 property.
                    ## @return a void
                    ## 
                    def api_user_profile_bio_member1=(value)
                        @api_user_profile_bio_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_profile_bio
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserProfileBio.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserProfile_bioMember1" => lambda {|n| @api_user_profile_bio_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfileBioMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserProfile_bioMember1", @api_user_profile_bio_member1)
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
                # Composed type wrapper for classes ApiUserProfileCreatedAtMember1, string
                class ApiUserProfileCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserProfileCreatedAtMember1
                    @api_user_profile_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserProfile_createdAtMember1 property value. Composed type representation for type ApiUserProfileCreatedAtMember1
                    ## @return a api_user_profile_created_at_member1
                    ## 
                    def api_user_profile_created_at_member1
                        return @api_user_profile_created_at_member1
                    end
                    ## 
                    ## Sets the ApiUserProfile_createdAtMember1 property value. Composed type representation for type ApiUserProfileCreatedAtMember1
                    ## @param value Value to set for the ApiUserProfile_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def api_user_profile_created_at_member1=(value)
                        @api_user_profile_created_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_profile_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserProfileCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserProfile_createdAtMember1" => lambda {|n| @api_user_profile_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfileCreatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserProfile_createdAtMember1", @api_user_profile_created_at_member1)
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
                # Composed type wrapper for classes ApiUserProfileNameMember1, string
                class ApiUserProfileName
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserProfileNameMember1
                    @api_user_profile_name_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserProfile_nameMember1 property value. Composed type representation for type ApiUserProfileNameMember1
                    ## @return a api_user_profile_name_member1
                    ## 
                    def api_user_profile_name_member1
                        return @api_user_profile_name_member1
                    end
                    ## 
                    ## Sets the ApiUserProfile_nameMember1 property value. Composed type representation for type ApiUserProfileNameMember1
                    ## @param value Value to set for the ApiUserProfile_nameMember1 property.
                    ## @return a void
                    ## 
                    def api_user_profile_name_member1=(value)
                        @api_user_profile_name_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_profile_name
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserProfileName.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserProfile_nameMember1" => lambda {|n| @api_user_profile_name_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfileNameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserProfile_nameMember1", @api_user_profile_name_member1)
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
                # Composed type wrapper for classes ApiUserProfileUsernameMember1, string
                class ApiUserProfileUsername
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserProfileUsernameMember1
                    @api_user_profile_username_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserProfile_usernameMember1 property value. Composed type representation for type ApiUserProfileUsernameMember1
                    ## @return a api_user_profile_username_member1
                    ## 
                    def api_user_profile_username_member1
                        return @api_user_profile_username_member1
                    end
                    ## 
                    ## Sets the ApiUserProfile_usernameMember1 property value. Composed type representation for type ApiUserProfileUsernameMember1
                    ## @param value Value to set for the ApiUserProfile_usernameMember1 property.
                    ## @return a void
                    ## 
                    def api_user_profile_username_member1=(value)
                        @api_user_profile_username_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_profile_username
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserProfileUsername.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserProfile_usernameMember1" => lambda {|n| @api_user_profile_username_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfileUsernameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserProfile_usernameMember1", @api_user_profile_username_member1)
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
