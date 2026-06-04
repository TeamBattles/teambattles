require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Filters and cursor pagination for listing matches.
            class MatchesRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # ISO 8601; only matches created at or after this time.
                @created_after
                ## 
                # ISO 8601; only matches created at or before this time.
                @created_before
                ## 
                # Opaque continuation cursor from a prior page's continueCursor.
                @cursor
                ## 
                # Exclude matches with these MatchStatus codes; unknown values are ignored.
                @exclude_statuses
                ## 
                # Filter to a single game by id.
                @game_id
                ## 
                # Only include matches with these MatchStatus codes; unknown values are ignored.
                @include_statuses
                ## 
                # Page size (1-100). Defaults to 25.
                @num_items
                ## 
                # Filter to matches against this opponent team (team id or slug).
                @opponent_id
                ## 
                # ISO 8601; only matches scheduled at or after this time.
                @scheduled_after
                ## 
                # ISO 8601; only matches scheduled at or before this time.
                @scheduled_before
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new MatchesRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                    @num_items = 25
                end
                ## 
                ## Gets the createdAfter property value. ISO 8601; only matches created at or after this time.
                ## @return a string
                ## 
                def created_after
                    return @created_after
                end
                ## 
                ## Sets the createdAfter property value. ISO 8601; only matches created at or after this time.
                ## @param value Value to set for the createdAfter property.
                ## @return a void
                ## 
                def created_after=(value)
                    @created_after = value
                end
                ## 
                ## Gets the createdBefore property value. ISO 8601; only matches created at or before this time.
                ## @return a string
                ## 
                def created_before
                    return @created_before
                end
                ## 
                ## Sets the createdBefore property value. ISO 8601; only matches created at or before this time.
                ## @param value Value to set for the createdBefore property.
                ## @return a void
                ## 
                def created_before=(value)
                    @created_before = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a matches_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MatchesRequestBody.new
                end
                ## 
                ## Gets the cursor property value. Opaque continuation cursor from a prior page's continueCursor.
                ## @return a matches_request_body_cursor
                ## 
                def cursor
                    return @cursor
                end
                ## 
                ## Sets the cursor property value. Opaque continuation cursor from a prior page's continueCursor.
                ## @param value Value to set for the cursor property.
                ## @return a void
                ## 
                def cursor=(value)
                    @cursor = value
                end
                ## 
                ## Gets the excludeStatuses property value. Exclude matches with these MatchStatus codes; unknown values are ignored.
                ## @return a string
                ## 
                def exclude_statuses
                    return @exclude_statuses
                end
                ## 
                ## Sets the excludeStatuses property value. Exclude matches with these MatchStatus codes; unknown values are ignored.
                ## @param value Value to set for the excludeStatuses property.
                ## @return a void
                ## 
                def exclude_statuses=(value)
                    @exclude_statuses = value
                end
                ## 
                ## Gets the gameId property value. Filter to a single game by id.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Filter to a single game by id.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAfter" => lambda {|n| @created_after = n.get_string_value() },
                        "createdBefore" => lambda {|n| @created_before = n.get_string_value() },
                        "cursor" => lambda {|n| @cursor = n.get_object_value(lambda {|pn| MatchesRequestBody::MatchesRequestBodyCursor.create_from_discriminator_value(pn) }) },
                        "excludeStatuses" => lambda {|n| @exclude_statuses = n.get_collection_of_primitive_values(String) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "includeStatuses" => lambda {|n| @include_statuses = n.get_collection_of_primitive_values(String) },
                        "numItems" => lambda {|n| @num_items = n.get_number_value() },
                        "opponentId" => lambda {|n| @opponent_id = n.get_string_value() },
                        "scheduledAfter" => lambda {|n| @scheduled_after = n.get_string_value() },
                        "scheduledBefore" => lambda {|n| @scheduled_before = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the includeStatuses property value. Only include matches with these MatchStatus codes; unknown values are ignored.
                ## @return a string
                ## 
                def include_statuses
                    return @include_statuses
                end
                ## 
                ## Sets the includeStatuses property value. Only include matches with these MatchStatus codes; unknown values are ignored.
                ## @param value Value to set for the includeStatuses property.
                ## @return a void
                ## 
                def include_statuses=(value)
                    @include_statuses = value
                end
                ## 
                ## Gets the numItems property value. Page size (1-100). Defaults to 25.
                ## @return a integer
                ## 
                def num_items
                    return @num_items
                end
                ## 
                ## Sets the numItems property value. Page size (1-100). Defaults to 25.
                ## @param value Value to set for the numItems property.
                ## @return a void
                ## 
                def num_items=(value)
                    @num_items = value
                end
                ## 
                ## Gets the opponentId property value. Filter to matches against this opponent team (team id or slug).
                ## @return a string
                ## 
                def opponent_id
                    return @opponent_id
                end
                ## 
                ## Sets the opponentId property value. Filter to matches against this opponent team (team id or slug).
                ## @param value Value to set for the opponentId property.
                ## @return a void
                ## 
                def opponent_id=(value)
                    @opponent_id = value
                end
                ## 
                ## Gets the scheduledAfter property value. ISO 8601; only matches scheduled at or after this time.
                ## @return a string
                ## 
                def scheduled_after
                    return @scheduled_after
                end
                ## 
                ## Sets the scheduledAfter property value. ISO 8601; only matches scheduled at or after this time.
                ## @param value Value to set for the scheduledAfter property.
                ## @return a void
                ## 
                def scheduled_after=(value)
                    @scheduled_after = value
                end
                ## 
                ## Gets the scheduledBefore property value. ISO 8601; only matches scheduled at or before this time.
                ## @return a string
                ## 
                def scheduled_before
                    return @scheduled_before
                end
                ## 
                ## Sets the scheduledBefore property value. ISO 8601; only matches scheduled at or before this time.
                ## @param value Value to set for the scheduledBefore property.
                ## @return a void
                ## 
                def scheduled_before=(value)
                    @scheduled_before = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("createdAfter", @created_after)
                    writer.write_string_value("createdBefore", @created_before)
                    writer.write_object_value("cursor", @cursor)
                    writer.write_collection_of_primitive_values("excludeStatuses", @exclude_statuses)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_collection_of_primitive_values("includeStatuses", @include_statuses)
                    writer.write_number_value("numItems", @num_items)
                    writer.write_string_value("opponentId", @opponent_id)
                    writer.write_string_value("scheduledAfter", @scheduled_after)
                    writer.write_string_value("scheduledBefore", @scheduled_before)
                    writer.write_additional_data(@additional_data)
                end

                ## 
                # Composed type wrapper for classes MatchesRequestBodyCursorMember1, string
                class MatchesRequestBodyCursor
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type MatchesRequestBodyCursorMember1
                    @matches_request_body_cursor_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a matches_request_body_cursor
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return MatchesRequestBodyCursor.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "MatchesRequestBody_cursorMember1" => lambda {|n| @matches_request_body_cursor_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::MatchesRequestBodyCursorMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the MatchesRequestBody_cursorMember1 property value. Composed type representation for type MatchesRequestBodyCursorMember1
                    ## @return a matches_request_body_cursor_member1
                    ## 
                    def matches_request_body_cursor_member1
                        return @matches_request_body_cursor_member1
                    end
                    ## 
                    ## Sets the MatchesRequestBody_cursorMember1 property value. Composed type representation for type MatchesRequestBodyCursorMember1
                    ## @param value Value to set for the MatchesRequestBody_cursorMember1 property.
                    ## @return a void
                    ## 
                    def matches_request_body_cursor_member1=(value)
                        @matches_request_body_cursor_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("MatchesRequestBody_cursorMember1", @matches_request_body_cursor_member1)
                        writer.write_string_value("string", @string)
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
                end
            end
        end
    end
end
