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
                ## @return a string
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
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "tag" => lambda {|n| @tag = n.get_string_value() },
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
                    writer.write_string_value("avatarUrl", @avatar_url)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("slug", @slug)
                    writer.write_string_value("tag", @tag)
                    writer.write_enum_value("visibility", @visibility)
                end
                ## 
                ## Gets the slug property value. The slug property
                ## @return a string
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
                ## @return a string
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
            end
        end
    end
end
