require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A freshly minted Convex storage upload URL. POST the image to it to receive a storageId for use on a downstream write.
            class ImageUploadUrlResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Short-lived, single-use URL to POST the image bytes to.
                @upload_url
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a image_upload_url_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ImageUploadUrlResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "uploadUrl" => lambda {|n| @upload_url = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("uploadUrl", @upload_url)
                end
                ## 
                ## Gets the uploadUrl property value. Short-lived, single-use URL to POST the image bytes to.
                ## @return a string
                ## 
                def upload_url
                    return @upload_url
                end
                ## 
                ## Sets the uploadUrl property value. Short-lived, single-use URL to POST the image bytes to.
                ## @param value Value to set for the uploadUrl property.
                ## @return a void
                ## 
                def upload_url=(value)
                    @upload_url = value
                end
            end
        end
    end
end
