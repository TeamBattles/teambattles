require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe strategy shape. Hidden working shapes are omitted from responses.
            class ApiStrategyShape
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Shape row ID.
                @id
                ## 
                # Canvas layer the shape renders on.
                @layer
                ## 
                # Stable client-side shape id.
                @shape_id
                ## 
                # Stage this shape belongs to.
                @stage_id
                ## 
                # Shape primitive type.
                @type
                ## 
                # The updatedAt property
                @updated_at
                ## 
                # Stacking order within its layer.
                @z_index
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_strategy_shape
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiStrategyShape.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "layer" => lambda {|n| @layer = n.get_enum_value(TeamBattlesSdk::Generated::Models::ApiStrategyShapeLayer) },
                        "shapeId" => lambda {|n| @shape_id = n.get_string_value() },
                        "stageId" => lambda {|n| @stage_id = n.get_string_value() },
                        "type" => lambda {|n| @type = n.get_enum_value(TeamBattlesSdk::Generated::Models::ApiStrategyShapeType) },
                        "updatedAt" => lambda {|n| @updated_at = n.get_object_value(lambda {|pn| ApiStrategyShape::ApiStrategyShapeUpdatedAt.create_from_discriminator_value(pn) }) },
                        "zIndex" => lambda {|n| @z_index = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. Shape row ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Shape row ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the layer property value. Canvas layer the shape renders on.
                ## @return a api_strategy_shape_layer
                ## 
                def layer
                    return @layer
                end
                ## 
                ## Sets the layer property value. Canvas layer the shape renders on.
                ## @param value Value to set for the layer property.
                ## @return a void
                ## 
                def layer=(value)
                    @layer = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("id", @id)
                    writer.write_enum_value("layer", @layer)
                    writer.write_string_value("shapeId", @shape_id)
                    writer.write_string_value("stageId", @stage_id)
                    writer.write_enum_value("type", @type)
                    writer.write_object_value("updatedAt", @updated_at)
                    writer.write_object_value("zIndex", @z_index)
                end
                ## 
                ## Gets the shapeId property value. Stable client-side shape id.
                ## @return a string
                ## 
                def shape_id
                    return @shape_id
                end
                ## 
                ## Sets the shapeId property value. Stable client-side shape id.
                ## @param value Value to set for the shapeId property.
                ## @return a void
                ## 
                def shape_id=(value)
                    @shape_id = value
                end
                ## 
                ## Gets the stageId property value. Stage this shape belongs to.
                ## @return a string
                ## 
                def stage_id
                    return @stage_id
                end
                ## 
                ## Sets the stageId property value. Stage this shape belongs to.
                ## @param value Value to set for the stageId property.
                ## @return a void
                ## 
                def stage_id=(value)
                    @stage_id = value
                end
                ## 
                ## Gets the type property value. Shape primitive type.
                ## @return a api_strategy_shape_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. Shape primitive type.
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
                ## 
                ## Gets the updatedAt property value. The updatedAt property
                ## @return a api_strategy_shape_updated_at
                ## 
                def updated_at
                    return @updated_at
                end
                ## 
                ## Sets the updatedAt property value. The updatedAt property
                ## @param value Value to set for the updatedAt property.
                ## @return a void
                ## 
                def updated_at=(value)
                    @updated_at = value
                end
                ## 
                ## Gets the zIndex property value. Stacking order within its layer.
                ## @return a double
                ## 
                def z_index
                    return @z_index
                end
                ## 
                ## Sets the zIndex property value. Stacking order within its layer.
                ## @param value Value to set for the zIndex property.
                ## @return a void
                ## 
                def z_index=(value)
                    @z_index = value
                end

                ## 
                # Composed type wrapper for classes ApiStrategyShapeUpdatedAtMember1, string
                class ApiStrategyShapeUpdatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiStrategyShapeUpdatedAtMember1
                    @api_strategy_shape_updated_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiStrategyShape_updatedAtMember1 property value. Composed type representation for type ApiStrategyShapeUpdatedAtMember1
                    ## @return a api_strategy_shape_updated_at_member1
                    ## 
                    def api_strategy_shape_updated_at_member1
                        return @api_strategy_shape_updated_at_member1
                    end
                    ## 
                    ## Sets the ApiStrategyShape_updatedAtMember1 property value. Composed type representation for type ApiStrategyShapeUpdatedAtMember1
                    ## @param value Value to set for the ApiStrategyShape_updatedAtMember1 property.
                    ## @return a void
                    ## 
                    def api_strategy_shape_updated_at_member1=(value)
                        @api_strategy_shape_updated_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_strategy_shape_updated_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiStrategyShapeUpdatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiStrategyShape_updatedAtMember1" => lambda {|n| @api_strategy_shape_updated_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyShapeUpdatedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiStrategyShape_updatedAtMember1", @api_strategy_shape_updated_at_member1)
                        writer.write_string_value("string", @string)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                end
            end
        end
    end
end
