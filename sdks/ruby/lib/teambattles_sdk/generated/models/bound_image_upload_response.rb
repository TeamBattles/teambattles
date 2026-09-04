require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A stored, NSFW-scanned image bound to the API key owner.
            class BoundImageUploadResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Convex storage id, already bound to the API key owner. Use it on a write.
                @storage_id
                ## 
                # Public CDN URL for the stored image.
                @url
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a bound_image_upload_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return BoundImageUploadResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "storageId" => lambda {|n| @storage_id = n.get_string_value() },
                        "url" => lambda {|n| @url = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("storageId", @storage_id)
                    writer.write_string_value("url", @url)
                end
                ## 
                ## Gets the storageId property value. Convex storage id, already bound to the API key owner. Use it on a write.
                ## @return a string
                ## 
                def storage_id
                    return @storage_id
                end
                ## 
                ## Sets the storageId property value. Convex storage id, already bound to the API key owner. Use it on a write.
                ## @param value Value to set for the storageId property.
                ## @return a void
                ## 
                def storage_id=(value)
                    @storage_id = value
                end
                ## 
                ## Gets the url property value. Public CDN URL for the stored image.
                ## @return a string
                ## 
                def url
                    return @url
                end
                ## 
                ## Sets the url property value. Public CDN URL for the stored image.
                ## @param value Value to set for the url property.
                ## @return a void
                ## 
                def url=(value)
                    @url = value
                end
            end
        end
    end
end
