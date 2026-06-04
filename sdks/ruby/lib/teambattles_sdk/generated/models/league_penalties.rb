require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Penalties and cooldowns for a league.
            class LeaguePenalties
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Enriched member cooldown records (empty when type is penalties).
                @cooldowns
                ## 
                # Combined number of penalties and cooldowns returned.
                @count
                ## 
                # Enriched penalty records (empty when type is cooldowns).
                @penalties
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the cooldowns property value. Enriched member cooldown records (empty when type is penalties).
                ## @return a league_penalties_cooldowns
                ## 
                def cooldowns
                    return @cooldowns
                end
                ## 
                ## Sets the cooldowns property value. Enriched member cooldown records (empty when type is penalties).
                ## @param value Value to set for the cooldowns property.
                ## @return a void
                ## 
                def cooldowns=(value)
                    @cooldowns = value
                end
                ## 
                ## Gets the count property value. Combined number of penalties and cooldowns returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Combined number of penalties and cooldowns returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_penalties
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeaguePenalties.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "cooldowns" => lambda {|n| @cooldowns = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeaguePenaltiesCooldowns.create_from_discriminator_value(pn) }) },
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "penalties" => lambda {|n| @penalties = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeaguePenaltiesPenalties.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the penalties property value. Enriched penalty records (empty when type is cooldowns).
                ## @return a league_penalties_penalties
                ## 
                def penalties
                    return @penalties
                end
                ## 
                ## Sets the penalties property value. Enriched penalty records (empty when type is cooldowns).
                ## @param value Value to set for the penalties property.
                ## @return a void
                ## 
                def penalties=(value)
                    @penalties = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("cooldowns", @cooldowns)
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("penalties", @penalties)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. Response generation time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Response generation time (ISO 8601).
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
