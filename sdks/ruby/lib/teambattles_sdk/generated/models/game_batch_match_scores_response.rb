require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Result of a multi-match batch map-score submission. Always returned with HTTP 200; inspect per-item status.
            class GameBatchMatchScoresResponse
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # Number of items that were confirmed.
                @count
                ##
                # Per-item results, in submission order.
                @submitted
                ##
                # True only when every submitted item was confirmed.
                @success
                ##
                ## Gets the count property value. Number of items that were confirmed.
                ## @return a integer
                ##
                def count
                    return @count
                end
                ##
                ## Sets the count property value. Number of items that were confirmed.
                ## @param value Value to set for the count property.
                ## @return a void
                ##
                def count=(value)
                    @count = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_batch_match_scores_response
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameBatchMatchScoresResponse.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "submitted" => lambda {|n| @submitted = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::GameBatchMatchScoreResult.create_from_discriminator_value(pn) }) },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                    }
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("submitted", @submitted)
                    writer.write_boolean_value("success", @success)
                end
                ##
                ## Gets the submitted property value. Per-item results, in submission order.
                ## @return a game_batch_match_score_result
                ##
                def submitted
                    return @submitted
                end
                ##
                ## Sets the submitted property value. Per-item results, in submission order.
                ## @param value Value to set for the submitted property.
                ## @return a void
                ##
                def submitted=(value)
                    @submitted = value
                end
                ##
                ## Gets the success property value. True only when every submitted item was confirmed.
                ## @return a boolean
                ##
                def success
                    return @success
                end
                ##
                ## Sets the success property value. True only when every submitted item was confirmed.
                ## @param value Value to set for the success property.
                ## @return a void
                ##
                def success=(value)
                    @success = value
                end
            end
        end
    end
end
