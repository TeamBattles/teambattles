require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe organization affiliation row on a user profile.
            class ApiUserOrganizationMembership
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The avatarUrl property
                @avatar_url
                ## 
                # Organization ID.
                @id
                ## 
                # The joinedAt property
                @joined_at
                ## 
                # Organization name.
                @name
                ## 
                # The role property
                @role
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
                ## Gets the avatarUrl property value. The avatarUrl property
                ## @return a api_user_organization_membership_avatar_url
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
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_user_organization_membership
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiUserOrganizationMembership.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiUserOrganizationMembership::ApiUserOrganizationMembershipAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "joinedAt" => lambda {|n| @joined_at = n.get_object_value(lambda {|pn| ApiUserOrganizationMembership::ApiUserOrganizationMembershipJoinedAt.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "role" => lambda {|n| @role = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_object_value(lambda {|pn| ApiUserOrganizationMembership::ApiUserOrganizationMembershipSlug.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_object_value(lambda {|pn| ApiUserOrganizationMembership::ApiUserOrganizationMembershipTag.create_from_discriminator_value(pn) }) },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::ProfileVisibility) },
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
                ## Gets the joinedAt property value. The joinedAt property
                ## @return a api_user_organization_membership_joined_at
                ## 
                def joined_at
                    return @joined_at
                end
                ## 
                ## Sets the joinedAt property value. The joinedAt property
                ## @param value Value to set for the joinedAt property.
                ## @return a void
                ## 
                def joined_at=(value)
                    @joined_at = value
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
                ## Gets the role property value. The role property
                ## @return a string
                ## 
                def role
                    return @role
                end
                ## 
                ## Sets the role property value. The role property
                ## @param value Value to set for the role property.
                ## @return a void
                ## 
                def role=(value)
                    @role = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("joinedAt", @joined_at)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("role", @role)
                    writer.write_object_value("slug", @slug)
                    writer.write_object_value("tag", @tag)
                    writer.write_enum_value("visibility", @visibility)
                end
                ## 
                ## Gets the slug property value. The slug property
                ## @return a api_user_organization_membership_slug
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
                ## @return a api_user_organization_membership_tag
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
                # Composed type wrapper for classes ApiUserOrganizationMembershipAvatarUrlMember1, string
                class ApiUserOrganizationMembershipAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserOrganizationMembershipAvatarUrlMember1
                    @api_user_organization_membership_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserOrganizationMembership_avatarUrlMember1 property value. Composed type representation for type ApiUserOrganizationMembershipAvatarUrlMember1
                    ## @return a api_user_organization_membership_avatar_url_member1
                    ## 
                    def api_user_organization_membership_avatar_url_member1
                        return @api_user_organization_membership_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiUserOrganizationMembership_avatarUrlMember1 property value. Composed type representation for type ApiUserOrganizationMembershipAvatarUrlMember1
                    ## @param value Value to set for the ApiUserOrganizationMembership_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_user_organization_membership_avatar_url_member1=(value)
                        @api_user_organization_membership_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_organization_membership_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserOrganizationMembershipAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserOrganizationMembership_avatarUrlMember1" => lambda {|n| @api_user_organization_membership_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserOrganizationMembershipAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserOrganizationMembership_avatarUrlMember1", @api_user_organization_membership_avatar_url_member1)
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
                # Composed type wrapper for classes ApiUserOrganizationMembershipJoinedAtMember1, string
                class ApiUserOrganizationMembershipJoinedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserOrganizationMembershipJoinedAtMember1
                    @api_user_organization_membership_joined_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserOrganizationMembership_joinedAtMember1 property value. Composed type representation for type ApiUserOrganizationMembershipJoinedAtMember1
                    ## @return a api_user_organization_membership_joined_at_member1
                    ## 
                    def api_user_organization_membership_joined_at_member1
                        return @api_user_organization_membership_joined_at_member1
                    end
                    ## 
                    ## Sets the ApiUserOrganizationMembership_joinedAtMember1 property value. Composed type representation for type ApiUserOrganizationMembershipJoinedAtMember1
                    ## @param value Value to set for the ApiUserOrganizationMembership_joinedAtMember1 property.
                    ## @return a void
                    ## 
                    def api_user_organization_membership_joined_at_member1=(value)
                        @api_user_organization_membership_joined_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_organization_membership_joined_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserOrganizationMembershipJoinedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserOrganizationMembership_joinedAtMember1" => lambda {|n| @api_user_organization_membership_joined_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserOrganizationMembershipJoinedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserOrganizationMembership_joinedAtMember1", @api_user_organization_membership_joined_at_member1)
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
                # Composed type wrapper for classes ApiUserOrganizationMembershipSlugMember1, string
                class ApiUserOrganizationMembershipSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserOrganizationMembershipSlugMember1
                    @api_user_organization_membership_slug_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserOrganizationMembership_slugMember1 property value. Composed type representation for type ApiUserOrganizationMembershipSlugMember1
                    ## @return a api_user_organization_membership_slug_member1
                    ## 
                    def api_user_organization_membership_slug_member1
                        return @api_user_organization_membership_slug_member1
                    end
                    ## 
                    ## Sets the ApiUserOrganizationMembership_slugMember1 property value. Composed type representation for type ApiUserOrganizationMembershipSlugMember1
                    ## @param value Value to set for the ApiUserOrganizationMembership_slugMember1 property.
                    ## @return a void
                    ## 
                    def api_user_organization_membership_slug_member1=(value)
                        @api_user_organization_membership_slug_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_organization_membership_slug
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserOrganizationMembershipSlug.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserOrganizationMembership_slugMember1" => lambda {|n| @api_user_organization_membership_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserOrganizationMembershipSlugMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserOrganizationMembership_slugMember1", @api_user_organization_membership_slug_member1)
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
                # Composed type wrapper for classes ApiUserOrganizationMembershipTagMember1, string
                class ApiUserOrganizationMembershipTag
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserOrganizationMembershipTagMember1
                    @api_user_organization_membership_tag_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserOrganizationMembership_tagMember1 property value. Composed type representation for type ApiUserOrganizationMembershipTagMember1
                    ## @return a api_user_organization_membership_tag_member1
                    ## 
                    def api_user_organization_membership_tag_member1
                        return @api_user_organization_membership_tag_member1
                    end
                    ## 
                    ## Sets the ApiUserOrganizationMembership_tagMember1 property value. Composed type representation for type ApiUserOrganizationMembershipTagMember1
                    ## @param value Value to set for the ApiUserOrganizationMembership_tagMember1 property.
                    ## @return a void
                    ## 
                    def api_user_organization_membership_tag_member1=(value)
                        @api_user_organization_membership_tag_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_organization_membership_tag
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserOrganizationMembershipTag.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserOrganizationMembership_tagMember1" => lambda {|n| @api_user_organization_membership_tag_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserOrganizationMembershipTagMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserOrganizationMembership_tagMember1", @api_user_organization_membership_tag_member1)
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
