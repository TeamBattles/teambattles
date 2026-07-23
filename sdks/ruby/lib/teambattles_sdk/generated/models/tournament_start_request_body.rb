require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Tournament start payload.
            class TournamentStartRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
                @manual_order
                ## 
                # How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
                @seed_method
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
                ## Instantiates a new TournamentStartRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_start_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentStartRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "manualOrder" => lambda {|n| @manual_order = n.get_collection_of_primitive_values(String) },
                        "seedMethod" => lambda {|n| @seed_method = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentStartRequestBodySeedMethod) },
                    }
                end
                ## 
                ## Gets the manualOrder property value. Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
                ## @return a string
                ## 
                def manual_order
                    return @manual_order
                end
                ## 
                ## Sets the manualOrder property value. Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
                ## @param value Value to set for the manualOrder property.
                ## @return a void
                ## 
                def manual_order=(value)
                    @manual_order = value
                end
                ## 
                ## Gets the seedMethod property value. How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
                ## @return a tournament_start_request_body_seed_method
                ## 
                def seed_method
                    return @seed_method
                end
                ## 
                ## Sets the seedMethod property value. How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
                ## @param value Value to set for the seedMethod property.
                ## @return a void
                ## 
                def seed_method=(value)
                    @seed_method = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("manualOrder", @manual_order)
                    writer.write_enum_value("seedMethod", @seed_method)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
