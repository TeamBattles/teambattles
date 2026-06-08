require 'microsoft_kiota_abstractions'
require_relative '../models/ticket_summary'
require_relative '../team_battles_sdk::_generated'
require_relative './tickets'

module TeamBattlesSdk
    module Generated
        module Tickets
            class TicketsGetResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The data property
                @data
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
                ## @return a tickets_get_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TicketsGetResponse.new
                end
                ## 
                ## Gets the data property value. The data property
                ## @return a ticket_summary
                ## 
                def data
                    return @data
                end
                ## 
                ## Sets the data property value. The data property
                ## @param value Value to set for the data property.
                ## @return a void
                ## 
                def data=(value)
                    @data = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "data" => lambda {|n| @data = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketSummary.create_from_discriminator_value(pn) }) },
                        "hasMore" => lambda {|n| @has_more = n.get_boolean_value() },
                        "nextCursor" => lambda {|n| @next_cursor = n.get_object_value(lambda {|pn| TicketsGetResponse::TicketsGetResponseNextCursor.create_from_discriminator_value(pn) }) },
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
                ## @return a tickets_get_response_next_cursor
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
                    writer.write_collection_of_object_values("data", @data)
                    writer.write_boolean_value("hasMore", @has_more)
                    writer.write_object_value("nextCursor", @next_cursor)
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

                ## 
                # Composed type wrapper for classes string, TicketsGetResponseNextCursorMember1
                class TicketsGetResponseNextCursor
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TicketsGetResponseNextCursorMember1
                    @tickets_get_response_next_cursor_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tickets_get_response_next_cursor
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TicketsGetResponseNextCursor.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "ticketsGetResponse_nextCursorMember1" => lambda {|n| @tickets_get_response_next_cursor_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Tickets::TicketsGetResponseNextCursorMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("ticketsGetResponse_nextCursorMember1", @tickets_get_response_next_cursor_member1)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                    ## 
                    ## Gets the ticketsGetResponse_nextCursorMember1 property value. Composed type representation for type TicketsGetResponseNextCursorMember1
                    ## @return a tickets_get_response_next_cursor_member1
                    ## 
                    def tickets_get_response_next_cursor_member1
                        return @tickets_get_response_next_cursor_member1
                    end
                    ## 
                    ## Sets the ticketsGetResponse_nextCursorMember1 property value. Composed type representation for type TicketsGetResponseNextCursorMember1
                    ## @param value Value to set for the ticketsGetResponse_nextCursorMember1 property.
                    ## @return a void
                    ## 
                    def tickets_get_response_next_cursor_member1=(value)
                        @tickets_get_response_next_cursor_member1 = value
                    end
                end
            end
        end
    end
end
