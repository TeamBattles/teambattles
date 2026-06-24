require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Fields to update on the team. All optional.
            class UpdateTeamBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The description property
                @description
                ## 
                # The name property
                @name
                ## 
                # The platform property
                @platform
                ## 
                # The profileVisibility property
                @profile_visibility
                ## 
                # The region property
                @region
                ## 
                # The tag property
                @tag
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new UpdateTeamBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_team_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateTeamBody.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a string
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
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "platform" => lambda {|n| @platform = n.get_string_value() },
                        "profileVisibility" => lambda {|n| @profile_visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::UpdateTeamBodyProfileVisibility) },
                        "region" => lambda {|n| @region = n.get_enum_value(TeamBattlesSdk::Generated::Models::UpdateTeamBodyRegion) },
                        "tag" => lambda {|n| @tag = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the platform property value. The platform property
                ## @return a string
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. The platform property
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Gets the profileVisibility property value. The profileVisibility property
                ## @return a update_team_body_profile_visibility
                ## 
                def profile_visibility
                    return @profile_visibility
                end
                ## 
                ## Sets the profileVisibility property value. The profileVisibility property
                ## @param value Value to set for the profileVisibility property.
                ## @return a void
                ## 
                def profile_visibility=(value)
                    @profile_visibility = value
                end
                ## 
                ## Gets the region property value. The region property
                ## @return a update_team_body_region
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. The region property
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("description", @description)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("platform", @platform)
                    writer.write_enum_value("profileVisibility", @profile_visibility)
                    writer.write_enum_value("region", @region)
                    writer.write_string_value("tag", @tag)
                    writer.write_additional_data(@additional_data)
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
            end
        end
    end
end
