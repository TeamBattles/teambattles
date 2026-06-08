require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpsertDisplayRuleRequestBodyContentSections
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The heading property
                @heading
                ## 
                # The items property
                @items
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
                ## Instantiates a new UpsertDisplayRuleRequestBodyContentSections and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a upsert_display_rule_request_body_content_sections
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpsertDisplayRuleRequestBodyContentSections.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "heading" => lambda {|n| @heading = n.get_string_value() },
                        "items" => lambda {|n| @items = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the heading property value. The heading property
                ## @return a string
                ## 
                def heading
                    return @heading
                end
                ## 
                ## Sets the heading property value. The heading property
                ## @param value Value to set for the heading property.
                ## @return a void
                ## 
                def heading=(value)
                    @heading = value
                end
                ## 
                ## Gets the items property value. The items property
                ## @return a string
                ## 
                def items
                    return @items
                end
                ## 
                ## Sets the items property value. The items property
                ## @param value Value to set for the items property.
                ## @return a void
                ## 
                def items=(value)
                    @items = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("heading", @heading)
                    writer.write_collection_of_primitive_values("items", @items)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
