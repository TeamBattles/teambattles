require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A team as embedded in the game-developer match-detail response ({ _id, name, tag }).
            class GameDetailTeam
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Team ID.
                @id
                ## 
                # Team name.
                @name
                ## 
                # Team tag (short identifier).
                @tag
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_detail_team
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameDetailTeam.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "_id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "tag" => lambda {|n| @tag = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the _id property value. Team ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the _id property value. Team ID.
                ## @param value Value to set for the _id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the name property value. Team name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Team name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("_id", @id)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("tag", @tag)
                end
                ## 
                ## Gets the tag property value. Team tag (short identifier).
                ## @return a string
                ## 
                def tag
                    return @tag
                end
                ## 
                ## Sets the tag property value. Team tag (short identifier).
                ## @param value Value to set for the tag property.
                ## @return a void
                ## 
                def tag=(value)
                    @tag = value
                end
            end
        end
    end
end
