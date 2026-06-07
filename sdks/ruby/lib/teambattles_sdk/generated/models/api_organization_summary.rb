require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Small API-safe organization summary.
            class ApiOrganizationSummary
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The avatarUrl property
                @avatar_url
                ##
                # Organization ID.
                @id
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
                # Public profile visibility setting.
                @visibility
                ##
                ## Gets the avatarUrl property value. The avatarUrl property
                ## @return a api_organization_summary_avatar_url
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
                ## @return a api_organization_summary
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiOrganizationSummary.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiOrganizationSummary::ApiOrganizationSummaryAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_object_value(lambda {|pn| ApiOrganizationSummary::ApiOrganizationSummarySlug.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_object_value(lambda {|pn| ApiOrganizationSummary::ApiOrganizationSummaryTag.create_from_discriminator_value(pn) }) },
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
                    writer.write_string_value("id", @id)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("slug", @slug)
                    writer.write_object_value("tag", @tag)
                    writer.write_enum_value("visibility", @visibility)
                end
                ##
                ## Gets the slug property value. The slug property
                ## @return a api_organization_summary_slug
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
                ## @return a api_organization_summary_tag
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
                # Composed type wrapper for classes ApiOrganizationSummaryAvatarUrlMember1, string
                class ApiOrganizationSummaryAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationSummaryAvatarUrlMember1
                    @api_organization_summary_avatar_url_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationSummary_avatarUrlMember1 property value. Composed type representation for type ApiOrganizationSummaryAvatarUrlMember1
                    ## @return a api_organization_summary_avatar_url_member1
                    ##
                    def api_organization_summary_avatar_url_member1
                        return @api_organization_summary_avatar_url_member1
                    end
                    ##
                    ## Sets the ApiOrganizationSummary_avatarUrlMember1 property value. Composed type representation for type ApiOrganizationSummaryAvatarUrlMember1
                    ## @param value Value to set for the ApiOrganizationSummary_avatarUrlMember1 property.
                    ## @return a void
                    ##
                    def api_organization_summary_avatar_url_member1=(value)
                        @api_organization_summary_avatar_url_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_summary_avatar_url
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationSummaryAvatarUrl.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationSummary_avatarUrlMember1" => lambda {|n| @api_organization_summary_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationSummaryAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationSummary_avatarUrlMember1", @api_organization_summary_avatar_url_member1)
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
                # Composed type wrapper for classes ApiOrganizationSummarySlugMember1, string
                class ApiOrganizationSummarySlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationSummarySlugMember1
                    @api_organization_summary_slug_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationSummary_slugMember1 property value. Composed type representation for type ApiOrganizationSummarySlugMember1
                    ## @return a api_organization_summary_slug_member1
                    ##
                    def api_organization_summary_slug_member1
                        return @api_organization_summary_slug_member1
                    end
                    ##
                    ## Sets the ApiOrganizationSummary_slugMember1 property value. Composed type representation for type ApiOrganizationSummarySlugMember1
                    ## @param value Value to set for the ApiOrganizationSummary_slugMember1 property.
                    ## @return a void
                    ##
                    def api_organization_summary_slug_member1=(value)
                        @api_organization_summary_slug_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_summary_slug
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationSummarySlug.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationSummary_slugMember1" => lambda {|n| @api_organization_summary_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationSummarySlugMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationSummary_slugMember1", @api_organization_summary_slug_member1)
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
                # Composed type wrapper for classes ApiOrganizationSummaryTagMember1, string
                class ApiOrganizationSummaryTag
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiOrganizationSummaryTagMember1
                    @api_organization_summary_tag_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiOrganizationSummary_tagMember1 property value. Composed type representation for type ApiOrganizationSummaryTagMember1
                    ## @return a api_organization_summary_tag_member1
                    ##
                    def api_organization_summary_tag_member1
                        return @api_organization_summary_tag_member1
                    end
                    ##
                    ## Sets the ApiOrganizationSummary_tagMember1 property value. Composed type representation for type ApiOrganizationSummaryTagMember1
                    ## @param value Value to set for the ApiOrganizationSummary_tagMember1 property.
                    ## @return a void
                    ##
                    def api_organization_summary_tag_member1=(value)
                        @api_organization_summary_tag_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_organization_summary_tag
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOrganizationSummaryTag.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiOrganizationSummary_tagMember1" => lambda {|n| @api_organization_summary_tag_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOrganizationSummaryTagMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiOrganizationSummary_tagMember1", @api_organization_summary_tag_member1)
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
