require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
            class GameBatchMatchScoresBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ##
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ##
                # Map scores to submit across one or more matches. 1-50 entries.
                @items
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
                ## Instantiates a new GameBatchMatchScoresBody and sets the default values.
                ## @return a void
                ##
                def initialize()
                    @additional_data = Hash.new
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_batch_match_scores_body
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameBatchMatchScoresBody.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMultiMatchScoreItem.create_from_discriminator_value(pn) }) },
                    }
                end
                ##
                ## Gets the items property value. Map scores to submit across one or more matches. 1-50 entries.
                ## @return a game_multi_match_score_item
                ##
                def items
                    return @items
                end
                ##
                ## Sets the items property value. Map scores to submit across one or more matches. 1-50 entries.
                ## @param value Value to set for the items property.
                ## @return a void
                ##
                def items=(value)
                    @items = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("items", @items)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
