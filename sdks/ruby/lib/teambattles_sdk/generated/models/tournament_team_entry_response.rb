require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The participant row created (or reused) by an entry or application.
            class TournamentTeamEntryResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
                @participant_id
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_team_entry_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentTeamEntryResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the participantId property value. The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
                ## @return a string
                ## 
                def participant_id
                    return @participant_id
                end
                ## 
                ## Sets the participantId property value. The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
                ## @param value Value to set for the participantId property.
                ## @return a void
                ## 
                def participant_id=(value)
                    @participant_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("participantId", @participant_id)
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
