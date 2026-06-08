require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates or updates a display rule.
            class UpsertDisplayRuleRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Display rule category.
                @category
                ## 
                # The categoryIcon property
                @category_icon
                ## 
                # The categoryOrder property
                @category_order
                ## 
                # The content property
                @content
                ## 
                # Game ID whose display rule should change.
                @game_id
                ## 
                # The isCustomCategory property
                @is_custom_category
                ## 
                # The isOverride property
                @is_override
                ## 
                # The scope property
                @scope
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
                ## Gets the category property value. Display rule category.
                ## @return a string
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. Display rule category.
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Gets the categoryIcon property value. The categoryIcon property
                ## @return a string
                ## 
                def category_icon
                    return @category_icon
                end
                ## 
                ## Sets the categoryIcon property value. The categoryIcon property
                ## @param value Value to set for the categoryIcon property.
                ## @return a void
                ## 
                def category_icon=(value)
                    @category_icon = value
                end
                ## 
                ## Gets the categoryOrder property value. The categoryOrder property
                ## @return a double
                ## 
                def category_order
                    return @category_order
                end
                ## 
                ## Sets the categoryOrder property value. The categoryOrder property
                ## @param value Value to set for the categoryOrder property.
                ## @return a void
                ## 
                def category_order=(value)
                    @category_order = value
                end
                ## 
                ## Instantiates a new UpsertDisplayRuleRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the content property value. The content property
                ## @return a upsert_display_rule_request_body_content
                ## 
                def content
                    return @content
                end
                ## 
                ## Sets the content property value. The content property
                ## @param value Value to set for the content property.
                ## @return a void
                ## 
                def content=(value)
                    @content = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a upsert_display_rule_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpsertDisplayRuleRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Game ID whose display rule should change.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID whose display rule should change.
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
                        "category" => lambda {|n| @category = n.get_string_value() },
                        "categoryIcon" => lambda {|n| @category_icon = n.get_string_value() },
                        "categoryOrder" => lambda {|n| @category_order = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UpsertDisplayRuleRequestBodyContent.create_from_discriminator_value(pn) }) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "isCustomCategory" => lambda {|n| @is_custom_category = n.get_boolean_value() },
                        "isOverride" => lambda {|n| @is_override = n.get_boolean_value() },
                        "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UpsertDisplayRuleRequestBodyScope.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the isCustomCategory property value. The isCustomCategory property
                ## @return a boolean
                ## 
                def is_custom_category
                    return @is_custom_category
                end
                ## 
                ## Sets the isCustomCategory property value. The isCustomCategory property
                ## @param value Value to set for the isCustomCategory property.
                ## @return a void
                ## 
                def is_custom_category=(value)
                    @is_custom_category = value
                end
                ## 
                ## Gets the isOverride property value. The isOverride property
                ## @return a boolean
                ## 
                def is_override
                    return @is_override
                end
                ## 
                ## Sets the isOverride property value. The isOverride property
                ## @param value Value to set for the isOverride property.
                ## @return a void
                ## 
                def is_override=(value)
                    @is_override = value
                end
                ## 
                ## Gets the scope property value. The scope property
                ## @return a upsert_display_rule_request_body_scope
                ## 
                def scope
                    return @scope
                end
                ## 
                ## Sets the scope property value. The scope property
                ## @param value Value to set for the scope property.
                ## @return a void
                ## 
                def scope=(value)
                    @scope = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("category", @category)
                    writer.write_string_value("categoryIcon", @category_icon)
                    writer.write_object_value("categoryOrder", @category_order)
                    writer.write_object_value("content", @content)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_boolean_value("isCustomCategory", @is_custom_category)
                    writer.write_boolean_value("isOverride", @is_override)
                    writer.write_object_value("scope", @scope)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
