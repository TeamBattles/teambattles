require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Free agent's response to a pickup offer.
            class TournamentOfferRespondBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
                @accept
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                ## Gets the accept property value. true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
                ## @return a boolean
                ## 
                def accept
                    return @accept
                end
                ## 
                ## Sets the accept property value. true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
                ## @param value Value to set for the accept property.
                ## @return a void
                ## 
                def accept=(value)
                    @accept = value
                end
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
                ## Instantiates a new TournamentOfferRespondBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_offer_respond_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentOfferRespondBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accept" => lambda {|n| @accept = n.get_boolean_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("accept", @accept)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
