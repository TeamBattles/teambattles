require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Result of deleting a game rank.
            class GameRankDeleteResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # True when a rank was removed; false when none existed (no-op).
                @deleted
                ## 
                # ISO 8601 response timestamp.
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_rank_delete_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameRankDeleteResponse.new
                end
                ## 
                ## Gets the deleted property value. True when a rank was removed; false when none existed (no-op).
                ## @return a boolean
                ## 
                def deleted
                    return @deleted
                end
                ## 
                ## Sets the deleted property value. True when a rank was removed; false when none existed (no-op).
                ## @param value Value to set for the deleted property.
                ## @return a void
                ## 
                def deleted=(value)
                    @deleted = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "deleted" => lambda {|n| @deleted = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("deleted", @deleted)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. ISO 8601 response timestamp.
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. ISO 8601 response timestamp.
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end
