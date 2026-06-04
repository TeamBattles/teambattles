require 'microsoft_kiota_abstractions'
require_relative '../models/league_summary'
require_relative '../team_battles_sdk::_generated'
require_relative './leagues'

module TeamBattlesSdk
    module Generated
        module Leagues
            class LeaguesPostResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The count property
                @count
                ## 
                # The leagues property
                @leagues
                ## 
                # The pagination property
                @pagination
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Gets the count property value. The count property
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. The count property
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a leagues_post_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeaguesPostResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "leagues" => lambda {|n| @leagues = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSummary.create_from_discriminator_value(pn) }) },
                        "pagination" => lambda {|n| @pagination = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Leagues::LeaguesPostResponsePagination.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the leagues property value. The leagues property
                ## @return a league_summary
                ## 
                def leagues
                    return @leagues
                end
                ## 
                ## Sets the leagues property value. The leagues property
                ## @param value Value to set for the leagues property.
                ## @return a void
                ## 
                def leagues=(value)
                    @leagues = value
                end
                ## 
                ## Gets the pagination property value. The pagination property
                ## @return a leagues_post_response_pagination
                ## 
                def pagination
                    return @pagination
                end
                ## 
                ## Sets the pagination property value. The pagination property
                ## @param value Value to set for the pagination property.
                ## @return a void
                ## 
                def pagination=(value)
                    @pagination = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("leagues", @leagues)
                    writer.write_object_value("pagination", @pagination)
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
