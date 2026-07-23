require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The tournament organizer activity feed.
            class TournamentActivityFeedResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
                @activities
                ## 
                # Number of entries returned.
                @count
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the activities property value. Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
                ## @return a tournament_activity_entry
                ## 
                def activities
                    return @activities
                end
                ## 
                ## Sets the activities property value. Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
                ## @param value Value to set for the activities property.
                ## @return a void
                ## 
                def activities=(value)
                    @activities = value
                end
                ## 
                ## Gets the count property value. Number of entries returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of entries returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_activity_feed_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentActivityFeedResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "activities" => lambda {|n| @activities = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentActivityEntry.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("activities", @activities)
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
