require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Outcome for a single (match, map) item in a multi-match batch.
            class GameBatchMatchScoreResult
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
                @error
                ##
                # Index of the map this result refers to.
                @map_index
                ##
                # Match ID this result refers to.
                @match_id
                ##
                # Per-item outcome: "confirmed" on success, "failed" otherwise.
                @status
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_batch_match_score_result
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameBatchMatchScoreResult.new
                end
                ##
                ## Gets the error property value. Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
                ## @return a string
                ##
                def error
                    return @error
                end
                ##
                ## Sets the error property value. Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
                ## @param value Value to set for the error property.
                ## @return a void
                ##
                def error=(value)
                    @error = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "error" => lambda {|n| @error = n.get_string_value() },
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "matchId" => lambda {|n| @match_id = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_string_value() },
                    }
                end
                ##
                ## Gets the mapIndex property value. Index of the map this result refers to.
                ## @return a integer
                ##
                def map_index
                    return @map_index
                end
                ##
                ## Sets the mapIndex property value. Index of the map this result refers to.
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ##
                def map_index=(value)
                    @map_index = value
                end
                ##
                ## Gets the matchId property value. Match ID this result refers to.
                ## @return a string
                ##
                def match_id
                    return @match_id
                end
                ##
                ## Sets the matchId property value. Match ID this result refers to.
                ## @param value Value to set for the matchId property.
                ## @return a void
                ##
                def match_id=(value)
                    @match_id = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("error", @error)
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_string_value("matchId", @match_id)
                    writer.write_string_value("status", @status)
                end
                ##
                ## Gets the status property value. Per-item outcome: "confirmed" on success, "failed" otherwise.
                ## @return a string
                ##
                def status
                    return @status
                end
                ##
                ## Sets the status property value. Per-item outcome: "confirmed" on success, "failed" otherwise.
                ## @param value Value to set for the status property.
                ## @return a void
                ##
                def status=(value)
                    @status = value
                end
            end
        end
    end
end
