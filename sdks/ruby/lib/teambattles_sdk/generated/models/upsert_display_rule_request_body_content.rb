require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpsertDisplayRuleRequestBodyContent
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The sections property
                @sections
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
                ## Instantiates a new UpsertDisplayRuleRequestBodyContent and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a upsert_display_rule_request_body_content
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpsertDisplayRuleRequestBodyContent.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "sections" => lambda {|n| @sections = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::UpsertDisplayRuleRequestBodyContentSections.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the sections property value. The sections property
                ## @return a upsert_display_rule_request_body_content_sections
                ## 
                def sections
                    return @sections
                end
                ## 
                ## Sets the sections property value. The sections property
                ## @param value Value to set for the sections property.
                ## @return a void
                ## 
                def sections=(value)
                    @sections = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("sections", @sections)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
