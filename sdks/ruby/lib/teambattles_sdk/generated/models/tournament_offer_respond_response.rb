require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Outcome of accepting or declining a free-agent pickup offer.
            class TournamentOfferRespondResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
                @accepted
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the accepted property value. Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
                ## @return a boolean
                ## 
                def accepted
                    return @accepted
                end
                ## 
                ## Sets the accepted property value. Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
                ## @param value Value to set for the accepted property.
                ## @return a void
                ## 
                def accepted=(value)
                    @accepted = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_offer_respond_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentOfferRespondResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accepted" => lambda {|n| @accepted = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("accepted", @accepted)
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
