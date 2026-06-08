require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Game-scoped map pool for a single mode.
            class ApiGameModeMapPool
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The mapIds property
                @map_ids
                ## 
                # The modeId property
                @mode_id
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_mode_map_pool
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGameModeMapPool.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "mapIds" => lambda {|n| @map_ids = n.get_collection_of_primitive_values(String) },
                        "modeId" => lambda {|n| @mode_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the mapIds property value. The mapIds property
                ## @return a string
                ## 
                def map_ids
                    return @map_ids
                end
                ## 
                ## Sets the mapIds property value. The mapIds property
                ## @param value Value to set for the mapIds property.
                ## @return a void
                ## 
                def map_ids=(value)
                    @map_ids = value
                end
                ## 
                ## Gets the modeId property value. The modeId property
                ## @return a string
                ## 
                def mode_id
                    return @mode_id
                end
                ## 
                ## Sets the modeId property value. The modeId property
                ## @param value Value to set for the modeId property.
                ## @return a void
                ## 
                def mode_id=(value)
                    @mode_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("mapIds", @map_ids)
                    writer.write_string_value("modeId", @mode_id)
                end
            end
        end
    end
end
