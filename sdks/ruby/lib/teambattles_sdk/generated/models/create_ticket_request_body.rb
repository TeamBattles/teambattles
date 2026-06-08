require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a self-filed support ticket owned by the API key owner.
            class CreateTicketRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Support category. Entity-bound and staff-only categories are rejected.
                @category
                ## 
                # Initial message / description (max 2000 chars).
                @description
                ## 
                # Optional storage IDs (from /uploads/image-url) to attach (max 10).
                @images
                ## 
                # Ticket subject (max 150 chars).
                @subject
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
                ## Gets the category property value. Support category. Entity-bound and staff-only categories are rejected.
                ## @return a create_ticket_request_body_category
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. Support category. Entity-bound and staff-only categories are rejected.
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Instantiates a new CreateTicketRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_ticket_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateTicketRequestBody.new
                end
                ## 
                ## Gets the description property value. Initial message / description (max 2000 chars).
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Initial message / description (max 2000 chars).
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
                        "category" => lambda {|n| @category = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateTicketRequestBodyCategory) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "images" => lambda {|n| @images = n.get_collection_of_primitive_values(String) },
                        "subject" => lambda {|n| @subject = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the images property value. Optional storage IDs (from /uploads/image-url) to attach (max 10).
                ## @return a string
                ## 
                def images
                    return @images
                end
                ## 
                ## Sets the images property value. Optional storage IDs (from /uploads/image-url) to attach (max 10).
                ## @param value Value to set for the images property.
                ## @return a void
                ## 
                def images=(value)
                    @images = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("category", @category)
                    writer.write_string_value("description", @description)
                    writer.write_collection_of_primitive_values("images", @images)
                    writer.write_string_value("subject", @subject)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the subject property value. Ticket subject (max 150 chars).
                ## @return a string
                ## 
                def subject
                    return @subject
                end
                ## 
                ## Sets the subject property value. Ticket subject (max 150 chars).
                ## @param value Value to set for the subject property.
                ## @return a void
                ## 
                def subject=(value)
                    @subject = value
                end
            end
        end
    end
end
