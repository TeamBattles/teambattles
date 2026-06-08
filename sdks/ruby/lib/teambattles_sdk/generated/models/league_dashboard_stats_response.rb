require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Aggregate league admin dashboard statistics.
            class LeagueDashboardStatsResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The stats property
                @stats
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_dashboard_stats_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueDashboardStatsResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "stats" => lambda {|n| @stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueDashboardStatsResponseStats.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("stats", @stats)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the stats property value. The stats property
                ## @return a league_dashboard_stats_response_stats
                ## 
                def stats
                    return @stats
                end
                ## 
                ## Sets the stats property value. The stats property
                ## @param value Value to set for the stats property.
                ## @return a void
                ## 
                def stats=(value)
                    @stats = value
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
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
