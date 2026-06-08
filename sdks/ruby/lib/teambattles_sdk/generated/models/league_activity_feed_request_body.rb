require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Cursor pagination options for a league activity feed.
            class LeagueActivityFeedRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The cursor property
                @cursor
                ## 
                # The limit property
                @limit
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
                ## Instantiates a new LeagueActivityFeedRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                    @limit = 25
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_activity_feed_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueActivityFeedRequestBody.new
                end
                ## 
                ## Gets the cursor property value. The cursor property
                ## @return a league_activity_feed_request_body_cursor
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
                        "cursor" => lambda {|n| @cursor = n.get_object_value(lambda {|pn| LeagueActivityFeedRequestBody::LeagueActivityFeedRequestBodyCursor.create_from_discriminator_value(pn) }) },
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the limit property value. The limit property
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. The limit property
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("cursor", @cursor)
                    writer.write_number_value("limit", @limit)
                    writer.write_additional_data(@additional_data)
                end

                ## 
                # Composed type wrapper for classes LeagueActivityFeedRequestBodyCursorMember1, string
                class LeagueActivityFeedRequestBodyCursor
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type LeagueActivityFeedRequestBodyCursorMember1
                    @league_activity_feed_request_body_cursor_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a league_activity_feed_request_body_cursor
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeagueActivityFeedRequestBodyCursor.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "LeagueActivityFeedRequestBody_cursorMember1" => lambda {|n| @league_activity_feed_request_body_cursor_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueActivityFeedRequestBodyCursorMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the LeagueActivityFeedRequestBody_cursorMember1 property value. Composed type representation for type LeagueActivityFeedRequestBodyCursorMember1
                    ## @return a league_activity_feed_request_body_cursor_member1
                    ## 
                    def league_activity_feed_request_body_cursor_member1
                        return @league_activity_feed_request_body_cursor_member1
                    end
                    ## 
                    ## Sets the LeagueActivityFeedRequestBody_cursorMember1 property value. Composed type representation for type LeagueActivityFeedRequestBodyCursorMember1
                    ## @param value Value to set for the LeagueActivityFeedRequestBody_cursorMember1 property.
                    ## @return a void
                    ## 
                    def league_activity_feed_request_body_cursor_member1=(value)
                        @league_activity_feed_request_body_cursor_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeagueActivityFeedRequestBody_cursorMember1", @league_activity_feed_request_body_cursor_member1)
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
