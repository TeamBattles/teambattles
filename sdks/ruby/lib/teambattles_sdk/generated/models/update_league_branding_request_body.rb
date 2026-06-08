require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Updates league profile branding and public metadata.
            class UpdateLeagueBrandingRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Convex storage ID for the league avatar.
                @avatar_storage_id
                ## 
                # Convex storage ID for the league banner.
                @banner_storage_id
                ## 
                # The description property
                @description
                ## 
                # The name property
                @name
                ## 
                # The profileThemeId property
                @profile_theme_id
                ## 
                # The socials property
                @socials
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
                ## Gets the avatarStorageId property value. Convex storage ID for the league avatar.
                ## @return a string
                ## 
                def avatar_storage_id
                    return @avatar_storage_id
                end
                ## 
                ## Sets the avatarStorageId property value. Convex storage ID for the league avatar.
                ## @param value Value to set for the avatarStorageId property.
                ## @return a void
                ## 
                def avatar_storage_id=(value)
                    @avatar_storage_id = value
                end
                ## 
                ## Gets the bannerStorageId property value. Convex storage ID for the league banner.
                ## @return a string
                ## 
                def banner_storage_id
                    return @banner_storage_id
                end
                ## 
                ## Sets the bannerStorageId property value. Convex storage ID for the league banner.
                ## @param value Value to set for the bannerStorageId property.
                ## @return a void
                ## 
                def banner_storage_id=(value)
                    @banner_storage_id = value
                end
                ## 
                ## Instantiates a new UpdateLeagueBrandingRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_league_branding_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateLeagueBrandingRequestBody.new
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
                        "avatarStorageId" => lambda {|n| @avatar_storage_id = n.get_string_value() },
                        "bannerStorageId" => lambda {|n| @banner_storage_id = n.get_string_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "profileThemeId" => lambda {|n| @profile_theme_id = n.get_string_value() },
                        "socials" => lambda {|n| @socials = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueBrandingSocials.create_from_discriminator_value(pn) }) },
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
                ## Gets the profileThemeId property value. The profileThemeId property
                ## @return a string
                ## 
                def profile_theme_id
                    return @profile_theme_id
                end
                ## 
                ## Sets the profileThemeId property value. The profileThemeId property
                ## @param value Value to set for the profileThemeId property.
                ## @return a void
                ## 
                def profile_theme_id=(value)
                    @profile_theme_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("avatarStorageId", @avatar_storage_id)
                    writer.write_string_value("bannerStorageId", @banner_storage_id)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("profileThemeId", @profile_theme_id)
                    writer.write_object_value("socials", @socials)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the socials property value. The socials property
                ## @return a league_branding_socials
                ## 
                def socials
                    return @socials
                end
                ## 
                ## Sets the socials property value. The socials property
                ## @param value Value to set for the socials property.
                ## @return a void
                ## 
                def socials=(value)
                    @socials = value
                end
            end
        end
    end
end
