require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Free-agent pickup offer payload.
            class TournamentSendOfferBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional message delivered to the free agent alongside the offer.
                @message
                ## 
                # Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
                @participant_id
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
                ## Instantiates a new TournamentSendOfferBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_send_offer_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentSendOfferBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "message" => lambda {|n| @message = n.get_string_value() },
                        "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the message property value. Optional message delivered to the free agent alongside the offer.
                ## @return a string
                ## 
                def message
                    return @message
                end
                ## 
                ## Sets the message property value. Optional message delivered to the free agent alongside the offer.
                ## @param value Value to set for the message property.
                ## @return a void
                ## 
                def message=(value)
                    @message = value
                end
                ## 
                ## Gets the participantId property value. Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
                ## @return a string
                ## 
                def participant_id
                    return @participant_id
                end
                ## 
                ## Sets the participantId property value. Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
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
                    writer.write_string_value("message", @message)
                    writer.write_string_value("participantId", @participant_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
