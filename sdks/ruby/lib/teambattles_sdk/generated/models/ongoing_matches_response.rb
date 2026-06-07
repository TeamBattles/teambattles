require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Ongoing matches for the API key owner's active teams.
            class OngoingMatchesResponse
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The matches property
                @matches
                ##
                # The timestamp property
                @timestamp
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a ongoing_matches_response
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return OngoingMatchesResponse.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "matches" => lambda {|n| @matches = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetail.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ##
                ## Gets the matches property value. The matches property
                ## @return a api_match_detail
                ##
                def matches
                    return @matches
                end
                ##
                ## Sets the matches property value. The matches property
                ## @param value Value to set for the matches property.
                ## @return a void
                ##
                def matches=(value)
                    @matches = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("matches", @matches)
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
