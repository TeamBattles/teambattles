require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Outcome of accepting or declining a tournament invite.
            class TournamentInviteRespondResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Echoes the request's accept flag once the response has been recorded.
                @accepted
                ## 
                # The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
                @participant_id
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the accepted property value. Echoes the request's accept flag once the response has been recorded.
                ## @return a boolean
                ## 
                def accepted
                    return @accepted
                end
                ## 
                ## Sets the accepted property value. Echoes the request's accept flag once the response has been recorded.
                ## @param value Value to set for the accepted property.
                ## @return a void
                ## 
                def accepted=(value)
                    @accepted = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_invite_respond_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentInviteRespondResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accepted" => lambda {|n| @accepted = n.get_boolean_value() },
                        "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the participantId property value. The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
                ## @return a string
                ## 
                def participant_id
                    return @participant_id
                end
                ## 
                ## Sets the participantId property value. The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
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
                    writer.write_boolean_value("accepted", @accepted)
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
