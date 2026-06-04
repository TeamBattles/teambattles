require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Team bans for a league.
            class LeagueBans
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Enriched team ban records with computed status.
                @bans
                ## 
                # Number of bans returned.
                @count
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the bans property value. Enriched team ban records with computed status.
                ## @return a league_bans_bans
                ## 
                def bans
                    return @bans
                end
                ## 
                ## Sets the bans property value. Enriched team ban records with computed status.
                ## @param value Value to set for the bans property.
                ## @return a void
                ## 
                def bans=(value)
                    @bans = value
                end
                ## 
                ## Gets the count property value. Number of bans returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of bans returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_bans
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueBans.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "bans" => lambda {|n| @bans = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueBansBans.create_from_discriminator_value(pn) }) },
                        "count" => lambda {|n| @count = n.get_number_value() },
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
                    writer.write_collection_of_object_values("bans", @bans)
                    writer.write_number_value("count", @count)
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
