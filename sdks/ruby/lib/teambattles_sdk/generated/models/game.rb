require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Game definition.
            class Game
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Game ID.
                @id
                ## 
                # Game name key for i18n lookup.
                @name_key
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Game.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "nameKey" => lambda {|n| @name_key = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Game ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Game ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the nameKey property value. Game name key for i18n lookup.
                ## @return a string
                ## 
                def name_key
                    return @name_key
                end
                ## 
                ## Sets the nameKey property value. Game name key for i18n lookup.
                ## @param value Value to set for the nameKey property.
                ## @return a void
                ## 
                def name_key=(value)
                    @name_key = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("id", @id)
                    writer.write_string_value("nameKey", @name_key)
                end
            end
        end
    end
end
