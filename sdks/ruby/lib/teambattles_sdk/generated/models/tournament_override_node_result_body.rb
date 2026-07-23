require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Bracket node result override payload.
            class TournamentOverrideNodeResultBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Score for the node's first entrant.
                @score1
                ## 
                # Score for the node's second entrant.
                @score2
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
                ## Instantiates a new TournamentOverrideNodeResultBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_override_node_result_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentOverrideNodeResultBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "score1" => lambda {|n| @score1 = n.get_number_value() },
                        "score2" => lambda {|n| @score2 = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the score1 property value. Score for the node's first entrant.
                ## @return a integer
                ## 
                def score1
                    return @score1
                end
                ## 
                ## Sets the score1 property value. Score for the node's first entrant.
                ## @param value Value to set for the score1 property.
                ## @return a void
                ## 
                def score1=(value)
                    @score1 = value
                end
                ## 
                ## Gets the score2 property value. Score for the node's second entrant.
                ## @return a integer
                ## 
                def score2
                    return @score2
                end
                ## 
                ## Sets the score2 property value. Score for the node's second entrant.
                ## @param value Value to set for the score2 property.
                ## @return a void
                ## 
                def score2=(value)
                    @score2 = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("score1", @score1)
                    writer.write_number_value("score2", @score2)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
