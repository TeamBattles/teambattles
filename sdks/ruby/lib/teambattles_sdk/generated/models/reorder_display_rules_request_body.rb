require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Reorders display rules.
            class ReorderDisplayRulesRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Game ID whose display rules should reorder.
                @game_id
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
                ## Instantiates a new ReorderDisplayRulesRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a reorder_display_rules_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ReorderDisplayRulesRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Game ID whose display rules should reorder.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID whose display rules should reorder.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ReorderDisplayRulesRequestBodyItems.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the items property value. The items property
                ## @return a reorder_display_rules_request_body_items
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
                    writer.write_string_value("gameId", @game_id)
                    writer.write_collection_of_object_values("items", @items)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
