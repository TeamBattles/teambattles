require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # SP-2 match detail response.
            class ApiMatchDetailResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
                @match
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_match_detail_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiMatchDetailResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "match" => lambda {|n| @match = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetail.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the match property value. Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
                ## @return a api_match_detail
                ## 
                def match
                    return @match
                end
                ## 
                ## Sets the match property value. Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
                ## @param value Value to set for the match property.
                ## @return a void
                ## 
                def match=(value)
                    @match = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("match", @match)
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
