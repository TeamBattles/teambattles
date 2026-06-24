require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Accepts a pending challenge as the API key owner.
            class AcceptChallengeRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Active roster user IDs for the challenge response.
                @active_roster
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional bench roster users.
                @bench_roster
                ## 
                ## Gets the activeRoster property value. Active roster user IDs for the challenge response.
                ## @return a string
                ## 
                def active_roster
                    return @active_roster
                end
                ## 
                ## Sets the activeRoster property value. Active roster user IDs for the challenge response.
                ## @param value Value to set for the activeRoster property.
                ## @return a void
                ## 
                def active_roster=(value)
                    @active_roster = value
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
                ## Gets the benchRoster property value. Optional bench roster users.
                ## @return a accept_challenge_request_body_bench_roster
                ## 
                def bench_roster
                    return @bench_roster
                end
                ## 
                ## Sets the benchRoster property value. Optional bench roster users.
                ## @param value Value to set for the benchRoster property.
                ## @return a void
                ## 
                def bench_roster=(value)
                    @bench_roster = value
                end
                ## 
                ## Instantiates a new AcceptChallengeRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a accept_challenge_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AcceptChallengeRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "activeRoster" => lambda {|n| @active_roster = n.get_collection_of_primitive_values(String) },
                        "benchRoster" => lambda {|n| @bench_roster = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::AcceptChallengeRequestBodyBenchRoster.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("activeRoster", @active_roster)
                    writer.write_collection_of_object_values("benchRoster", @bench_roster)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
