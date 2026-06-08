require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe team affiliation row on a user profile.
            class ApiUserTeamMembership
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The avatarUrl property
                @avatar_url
                ## 
                # Team ID.
                @id
                ## 
                # The joinedAt property
                @joined_at
                ## 
                # Team name.
                @name
                ## 
                # The organization property
                @organization
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
                ## @return a api_user_team_membership_avatar_url
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
                ## @return a api_user_team_membership
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiUserTeamMembership.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiUserTeamMembership::ApiUserTeamMembershipAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "joinedAt" => lambda {|n| @joined_at = n.get_object_value(lambda {|pn| ApiUserTeamMembership::ApiUserTeamMembershipJoinedAt.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "organization" => lambda {|n| @organization = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationSummary.create_from_discriminator_value(pn) }) },
                        "role" => lambda {|n| @role = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_object_value(lambda {|pn| ApiUserTeamMembership::ApiUserTeamMembershipSlug.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_object_value(lambda {|pn| ApiUserTeamMembership::ApiUserTeamMembershipTag.create_from_discriminator_value(pn) }) },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::ProfileVisibility) },
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
                ## Gets the joinedAt property value. The joinedAt property
                ## @return a api_user_team_membership_joined_at
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
                ## Gets the organization property value. The organization property
                ## @return a api_organization_summary
                ## 
                def organization
                    return @organization
                end
                ## 
                ## Sets the organization property value. The organization property
                ## @param value Value to set for the organization property.
                ## @return a void
                ## 
                def organization=(value)
                    @organization = value
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
                    writer.write_object_value("organization", @organization)
                    writer.write_string_value("role", @role)
                    writer.write_object_value("slug", @slug)
                    writer.write_object_value("tag", @tag)
                    writer.write_enum_value("visibility", @visibility)
                end
                ## 
                ## Gets the slug property value. The slug property
                ## @return a api_user_team_membership_slug
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
                ## @return a api_user_team_membership_tag
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
                # Composed type wrapper for classes ApiUserTeamMembershipAvatarUrlMember1, string
                class ApiUserTeamMembershipAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserTeamMembershipAvatarUrlMember1
                    @api_user_team_membership_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserTeamMembership_avatarUrlMember1 property value. Composed type representation for type ApiUserTeamMembershipAvatarUrlMember1
                    ## @return a api_user_team_membership_avatar_url_member1
                    ## 
                    def api_user_team_membership_avatar_url_member1
                        return @api_user_team_membership_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiUserTeamMembership_avatarUrlMember1 property value. Composed type representation for type ApiUserTeamMembershipAvatarUrlMember1
                    ## @param value Value to set for the ApiUserTeamMembership_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_user_team_membership_avatar_url_member1=(value)
                        @api_user_team_membership_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_team_membership_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTeamMembershipAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserTeamMembership_avatarUrlMember1" => lambda {|n| @api_user_team_membership_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTeamMembershipAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTeamMembership_avatarUrlMember1", @api_user_team_membership_avatar_url_member1)
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
                # Composed type wrapper for classes ApiUserTeamMembershipJoinedAtMember1, string
                class ApiUserTeamMembershipJoinedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserTeamMembershipJoinedAtMember1
                    @api_user_team_membership_joined_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserTeamMembership_joinedAtMember1 property value. Composed type representation for type ApiUserTeamMembershipJoinedAtMember1
                    ## @return a api_user_team_membership_joined_at_member1
                    ## 
                    def api_user_team_membership_joined_at_member1
                        return @api_user_team_membership_joined_at_member1
                    end
                    ## 
                    ## Sets the ApiUserTeamMembership_joinedAtMember1 property value. Composed type representation for type ApiUserTeamMembershipJoinedAtMember1
                    ## @param value Value to set for the ApiUserTeamMembership_joinedAtMember1 property.
                    ## @return a void
                    ## 
                    def api_user_team_membership_joined_at_member1=(value)
                        @api_user_team_membership_joined_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_team_membership_joined_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTeamMembershipJoinedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserTeamMembership_joinedAtMember1" => lambda {|n| @api_user_team_membership_joined_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTeamMembershipJoinedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTeamMembership_joinedAtMember1", @api_user_team_membership_joined_at_member1)
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
                # Composed type wrapper for classes ApiUserTeamMembershipSlugMember1, string
                class ApiUserTeamMembershipSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserTeamMembershipSlugMember1
                    @api_user_team_membership_slug_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserTeamMembership_slugMember1 property value. Composed type representation for type ApiUserTeamMembershipSlugMember1
                    ## @return a api_user_team_membership_slug_member1
                    ## 
                    def api_user_team_membership_slug_member1
                        return @api_user_team_membership_slug_member1
                    end
                    ## 
                    ## Sets the ApiUserTeamMembership_slugMember1 property value. Composed type representation for type ApiUserTeamMembershipSlugMember1
                    ## @param value Value to set for the ApiUserTeamMembership_slugMember1 property.
                    ## @return a void
                    ## 
                    def api_user_team_membership_slug_member1=(value)
                        @api_user_team_membership_slug_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_team_membership_slug
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTeamMembershipSlug.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserTeamMembership_slugMember1" => lambda {|n| @api_user_team_membership_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTeamMembershipSlugMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTeamMembership_slugMember1", @api_user_team_membership_slug_member1)
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
                # Composed type wrapper for classes ApiUserTeamMembershipTagMember1, string
                class ApiUserTeamMembershipTag
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiUserTeamMembershipTagMember1
                    @api_user_team_membership_tag_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiUserTeamMembership_tagMember1 property value. Composed type representation for type ApiUserTeamMembershipTagMember1
                    ## @return a api_user_team_membership_tag_member1
                    ## 
                    def api_user_team_membership_tag_member1
                        return @api_user_team_membership_tag_member1
                    end
                    ## 
                    ## Sets the ApiUserTeamMembership_tagMember1 property value. Composed type representation for type ApiUserTeamMembershipTagMember1
                    ## @param value Value to set for the ApiUserTeamMembership_tagMember1 property.
                    ## @return a void
                    ## 
                    def api_user_team_membership_tag_member1=(value)
                        @api_user_team_membership_tag_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_team_membership_tag
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTeamMembershipTag.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiUserTeamMembership_tagMember1" => lambda {|n| @api_user_team_membership_tag_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTeamMembershipTagMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTeamMembership_tagMember1", @api_user_team_membership_tag_member1)
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
