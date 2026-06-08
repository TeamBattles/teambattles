require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A paginated league activity feed.
            class LeagueActivityFeedResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The hasMore property
                @has_more
                ## 
                # The nextCursor property
                @next_cursor
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_activity_feed_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueActivityFeedResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "hasMore" => lambda {|n| @has_more = n.get_boolean_value() },
                        "nextCursor" => lambda {|n| @next_cursor = n.get_string_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the hasMore property value. The hasMore property
                ## @return a boolean
                ## 
                def has_more
                    return @has_more
                end
                ## 
                ## Sets the hasMore property value. The hasMore property
                ## @param value Value to set for the hasMore property.
                ## @return a void
                ## 
                def has_more=(value)
                    @has_more = value
                end
                ## 
                ## Gets the nextCursor property value. The nextCursor property
                ## @return a string
                ## 
                def next_cursor
                    return @next_cursor
                end
                ## 
                ## Sets the nextCursor property value. The nextCursor property
                ## @param value Value to set for the nextCursor property.
                ## @return a void
                ## 
                def next_cursor=(value)
                    @next_cursor = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("hasMore", @has_more)
                    writer.write_string_value("nextCursor", @next_cursor)
                    writer.write_string_value("timestamp", @timestamp)
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
