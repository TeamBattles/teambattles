require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Small API-safe team summary.
            class ApiTeamSummary
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The avatarUrl property
                @avatar_url
                ## 
                # Team ID.
                @id
                ## 
                # Team name.
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
                ## @return a api_team_summary_avatar_url
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
                ## @return a api_team_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiTeamSummary.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiTeamSummary::ApiTeamSummaryAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_object_value(lambda {|pn| ApiTeamSummary::ApiTeamSummarySlug.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_object_value(lambda {|pn| ApiTeamSummary::ApiTeamSummaryTag.create_from_discriminator_value(pn) }) },
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
                ## @return a api_team_summary_slug
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
                ## @return a api_team_summary_tag
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
                # Composed type wrapper for classes ApiTeamSummaryAvatarUrlMember1, string
                class ApiTeamSummaryAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamSummaryAvatarUrlMember1
                    @api_team_summary_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamSummary_avatarUrlMember1 property value. Composed type representation for type ApiTeamSummaryAvatarUrlMember1
                    ## @return a api_team_summary_avatar_url_member1
                    ## 
                    def api_team_summary_avatar_url_member1
                        return @api_team_summary_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiTeamSummary_avatarUrlMember1 property value. Composed type representation for type ApiTeamSummaryAvatarUrlMember1
                    ## @param value Value to set for the ApiTeamSummary_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_team_summary_avatar_url_member1=(value)
                        @api_team_summary_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_summary_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamSummaryAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamSummary_avatarUrlMember1" => lambda {|n| @api_team_summary_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamSummaryAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiTeamSummary_avatarUrlMember1", @api_team_summary_avatar_url_member1)
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
                # Composed type wrapper for classes ApiTeamSummarySlugMember1, string
                class ApiTeamSummarySlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamSummarySlugMember1
                    @api_team_summary_slug_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamSummary_slugMember1 property value. Composed type representation for type ApiTeamSummarySlugMember1
                    ## @return a api_team_summary_slug_member1
                    ## 
                    def api_team_summary_slug_member1
                        return @api_team_summary_slug_member1
                    end
                    ## 
                    ## Sets the ApiTeamSummary_slugMember1 property value. Composed type representation for type ApiTeamSummarySlugMember1
                    ## @param value Value to set for the ApiTeamSummary_slugMember1 property.
                    ## @return a void
                    ## 
                    def api_team_summary_slug_member1=(value)
                        @api_team_summary_slug_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_summary_slug
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamSummarySlug.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamSummary_slugMember1" => lambda {|n| @api_team_summary_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamSummarySlugMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiTeamSummary_slugMember1", @api_team_summary_slug_member1)
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
                # Composed type wrapper for classes ApiTeamSummaryTagMember1, string
                class ApiTeamSummaryTag
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiTeamSummaryTagMember1
                    @api_team_summary_tag_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiTeamSummary_tagMember1 property value. Composed type representation for type ApiTeamSummaryTagMember1
                    ## @return a api_team_summary_tag_member1
                    ## 
                    def api_team_summary_tag_member1
                        return @api_team_summary_tag_member1
                    end
                    ## 
                    ## Sets the ApiTeamSummary_tagMember1 property value. Composed type representation for type ApiTeamSummaryTagMember1
                    ## @param value Value to set for the ApiTeamSummary_tagMember1 property.
                    ## @return a void
                    ## 
                    def api_team_summary_tag_member1=(value)
                        @api_team_summary_tag_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_team_summary_tag
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiTeamSummaryTag.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiTeamSummary_tagMember1" => lambda {|n| @api_team_summary_tag_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamSummaryTagMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiTeamSummary_tagMember1", @api_team_summary_tag_member1)
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
