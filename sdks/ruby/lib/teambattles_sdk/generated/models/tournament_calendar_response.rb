require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Tournament milestones for the key owner's teams.
            class TournamentCalendarResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of milestones returned.
                @count
                ## 
                # Milestones in the requested window, ascending by time.
                @events
                ## 
                # Applied window end (ISO 8601).
                @range_end
                ## 
                # Applied window start (ISO 8601).
                @range_start
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the count property value. Number of milestones returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of milestones returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_calendar_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentCalendarResponse.new
                end
                ## 
                ## Gets the events property value. Milestones in the requested window, ascending by time.
                ## @return a tournament_calendar_event
                ## 
                def events
                    return @events
                end
                ## 
                ## Sets the events property value. Milestones in the requested window, ascending by time.
                ## @param value Value to set for the events property.
                ## @return a void
                ## 
                def events=(value)
                    @events = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentCalendarEvent.create_from_discriminator_value(pn) }) },
                        "rangeEnd" => lambda {|n| @range_end = n.get_string_value() },
                        "rangeStart" => lambda {|n| @range_start = n.get_string_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the rangeEnd property value. Applied window end (ISO 8601).
                ## @return a string
                ## 
                def range_end
                    return @range_end
                end
                ## 
                ## Sets the rangeEnd property value. Applied window end (ISO 8601).
                ## @param value Value to set for the rangeEnd property.
                ## @return a void
                ## 
                def range_end=(value)
                    @range_end = value
                end
                ## 
                ## Gets the rangeStart property value. Applied window start (ISO 8601).
                ## @return a string
                ## 
                def range_start
                    return @range_start
                end
                ## 
                ## Sets the rangeStart property value. Applied window start (ISO 8601).
                ## @param value Value to set for the rangeStart property.
                ## @return a void
                ## 
                def range_start=(value)
                    @range_start = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("events", @events)
                    writer.write_string_value("rangeEnd", @range_end)
                    writer.write_string_value("rangeStart", @range_start)
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
