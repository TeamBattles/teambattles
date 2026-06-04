require 'microsoft_kiota_abstractions'
require_relative '../../../models/user_match'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../orgs'
require_relative '../item'
require_relative './matches'

module TeamBattlesSdk
    module Generated
        module Orgs
            module Item
                module Matches
                    class MatchesPostResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The continueCursor property
                        @continue_cursor
                        ## 
                        # The isDone property
                        @is_done
                        ## 
                        # The page property
                        @page
                        ## 
                        ## Gets the continueCursor property value. The continueCursor property
                        ## @return a string
                        ## 
                        def continue_cursor
                            return @continue_cursor
                        end
                        ## 
                        ## Sets the continueCursor property value. The continueCursor property
                        ## @param value Value to set for the continueCursor property.
                        ## @return a void
                        ## 
                        def continue_cursor=(value)
                            @continue_cursor = value
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a matches_post_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MatchesPostResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "continueCursor" => lambda {|n| @continue_cursor = n.get_string_value() },
                                "isDone" => lambda {|n| @is_done = n.get_boolean_value() },
                                "page" => lambda {|n| @page = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::UserMatch.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the isDone property value. The isDone property
                        ## @return a boolean
                        ## 
                        def is_done
                            return @is_done
                        end
                        ## 
                        ## Sets the isDone property value. The isDone property
                        ## @param value Value to set for the isDone property.
                        ## @return a void
                        ## 
                        def is_done=(value)
                            @is_done = value
                        end
                        ## 
                        ## Gets the page property value. The page property
                        ## @return a user_match
                        ## 
                        def page
                            return @page
                        end
                        ## 
                        ## Sets the page property value. The page property
                        ## @param value Value to set for the page property.
                        ## @return a void
                        ## 
                        def page=(value)
                            @page = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("continueCursor", @continue_cursor)
                            writer.write_boolean_value("isDone", @is_done)
                            writer.write_collection_of_object_values("page", @page)
                        end
                    end
                end
            end
        end
    end
end
