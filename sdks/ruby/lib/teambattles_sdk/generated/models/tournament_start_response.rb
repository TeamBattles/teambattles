require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Acknowledgement that a tournament was started. Matches follow asynchronously.
            class TournamentStartResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
                @accepted
                ## 
                # Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
                @match_generation
                ## 
                # Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
                @node_count
                ## 
                # The lifecycle status this call set.
                @status
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Gets the accepted property value. The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
                ## @return a boolean
                ## 
                def accepted
                    return @accepted
                end
                ## 
                ## Sets the accepted property value. The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
                ## @param value Value to set for the accepted property.
                ## @return a void
                ## 
                def accepted=(value)
                    @accepted = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_start_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentStartResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accepted" => lambda {|n| @accepted = n.get_boolean_value() },
                        "matchGeneration" => lambda {|n| @match_generation = n.get_string_value() },
                        "nodeCount" => lambda {|n| @node_count = n.get_number_value() },
                        "status" => lambda {|n| @status = n.get_string_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the matchGeneration property value. Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
                ## @return a string
                ## 
                def match_generation
                    return @match_generation
                end
                ## 
                ## Sets the matchGeneration property value. Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
                ## @param value Value to set for the matchGeneration property.
                ## @return a void
                ## 
                def match_generation=(value)
                    @match_generation = value
                end
                ## 
                ## Gets the nodeCount property value. Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
                ## @return a integer
                ## 
                def node_count
                    return @node_count
                end
                ## 
                ## Sets the nodeCount property value. Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
                ## @param value Value to set for the nodeCount property.
                ## @return a void
                ## 
                def node_count=(value)
                    @node_count = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("accepted", @accepted)
                    writer.write_string_value("matchGeneration", @match_generation)
                    writer.write_number_value("nodeCount", @node_count)
                    writer.write_string_value("status", @status)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the status property value. The lifecycle status this call set.
                ## @return a string
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. The lifecycle status this call set.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
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
