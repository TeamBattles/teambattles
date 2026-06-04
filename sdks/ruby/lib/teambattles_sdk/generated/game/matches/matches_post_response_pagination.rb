require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../game'
require_relative './matches'

module TeamBattlesSdk
    module Generated
        module Game
            module Matches
                class MatchesPostResponsePagination
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # The cursor property
                    @cursor
                    ## 
                    # The hasMore property
                    @has_more
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a matches_post_response_pagination
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return MatchesPostResponsePagination.new
                    end
                    ## 
                    ## Gets the cursor property value. The cursor property
                    ## @return a matches_post_response_pagination_cursor
                    ## 
                    def cursor
                        return @cursor
                    end
                    ## 
                    ## Sets the cursor property value. The cursor property
                    ## @param value Value to set for the cursor property.
                    ## @return a void
                    ## 
                    def cursor=(value)
                        @cursor = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "cursor" => lambda {|n| @cursor = n.get_object_value(lambda {|pn| MatchesPostResponsePagination::MatchesPostResponsePaginationCursor.create_from_discriminator_value(pn) }) },
                            "hasMore" => lambda {|n| @has_more = n.get_boolean_value() },
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
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("cursor", @cursor)
                        writer.write_boolean_value("hasMore", @has_more)
                    end

                    ## 
                    # Composed type wrapper for classes MatchesPostResponsePaginationCursorMember1, string
                    class MatchesPostResponsePaginationCursor
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Composed type representation for type MatchesPostResponsePaginationCursorMember1
                        @matches_post_response_pagination_cursor_member1
                        ## 
                        # Composed type representation for type string
                        @string
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a matches_post_response_pagination_cursor
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MatchesPostResponsePaginationCursor.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "matchesPostResponse_pagination_cursorMember1" => lambda {|n| @matches_post_response_pagination_cursor_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Game::Matches::MatchesPostResponsePaginationCursorMember1.create_from_discriminator_value(pn) }) },
                                "string" => lambda {|n| @string = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the matchesPostResponse_pagination_cursorMember1 property value. Composed type representation for type MatchesPostResponsePaginationCursorMember1
                        ## @return a matches_post_response_pagination_cursor_member1
                        ## 
                        def matches_post_response_pagination_cursor_member1
                            return @matches_post_response_pagination_cursor_member1
                        end
                        ## 
                        ## Sets the matchesPostResponse_pagination_cursorMember1 property value. Composed type representation for type MatchesPostResponsePaginationCursorMember1
                        ## @param value Value to set for the matchesPostResponse_pagination_cursorMember1 property.
                        ## @return a void
                        ## 
                        def matches_post_response_pagination_cursor_member1=(value)
                            @matches_post_response_pagination_cursor_member1 = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("matchesPostResponse_pagination_cursorMember1", @matches_post_response_pagination_cursor_member1)
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
end
