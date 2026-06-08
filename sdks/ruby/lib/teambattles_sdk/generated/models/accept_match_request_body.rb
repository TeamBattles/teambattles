require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a match acceptance request as the API key owner.
            class AcceptMatchRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Active roster user IDs for the acceptance request.
                @active_roster
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional bench roster users.
                @bench_roster
                ## 
                # Optional proposed rule changes.
                @disputed_rules
                ## 
                # Optional map preference mode for selected maps.
                @map_preference_mode
                ## 
                # Optional message for the match creator.
                @message
                ## 
                # Optional proposed map IDs.
                @selected_maps
                ## 
                # Team ID accepting the match.
                @team_id
                ## 
                ## Gets the activeRoster property value. Active roster user IDs for the acceptance request.
                ## @return a string
                ## 
                def active_roster
                    return @active_roster
                end
                ## 
                ## Sets the activeRoster property value. Active roster user IDs for the acceptance request.
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
                ## @return a accept_match_request_body_bench_roster
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
                ## Instantiates a new AcceptMatchRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a accept_match_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AcceptMatchRequestBody.new
                end
                ## 
                ## Gets the disputedRules property value. Optional proposed rule changes.
                ## @return a accept_match_request_body_disputed_rules
                ## 
                def disputed_rules
                    return @disputed_rules
                end
                ## 
                ## Sets the disputedRules property value. Optional proposed rule changes.
                ## @param value Value to set for the disputedRules property.
                ## @return a void
                ## 
                def disputed_rules=(value)
                    @disputed_rules = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "activeRoster" => lambda {|n| @active_roster = n.get_collection_of_primitive_values(String) },
                        "benchRoster" => lambda {|n| @bench_roster = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::AcceptMatchRequestBodyBenchRoster.create_from_discriminator_value(pn) }) },
                        "disputedRules" => lambda {|n| @disputed_rules = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::AcceptMatchRequestBodyDisputedRules.create_from_discriminator_value(pn) }) },
                        "mapPreferenceMode" => lambda {|n| @map_preference_mode = n.get_enum_value(TeamBattlesSdk::Generated::Models::AcceptMatchRequestBodyMapPreferenceMode) },
                        "message" => lambda {|n| @message = n.get_string_value() },
                        "selectedMaps" => lambda {|n| @selected_maps = n.get_collection_of_primitive_values(String) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the mapPreferenceMode property value. Optional map preference mode for selected maps.
                ## @return a accept_match_request_body_map_preference_mode
                ## 
                def map_preference_mode
                    return @map_preference_mode
                end
                ## 
                ## Sets the mapPreferenceMode property value. Optional map preference mode for selected maps.
                ## @param value Value to set for the mapPreferenceMode property.
                ## @return a void
                ## 
                def map_preference_mode=(value)
                    @map_preference_mode = value
                end
                ## 
                ## Gets the message property value. Optional message for the match creator.
                ## @return a string
                ## 
                def message
                    return @message
                end
                ## 
                ## Sets the message property value. Optional message for the match creator.
                ## @param value Value to set for the message property.
                ## @return a void
                ## 
                def message=(value)
                    @message = value
                end
                ## 
                ## Gets the selectedMaps property value. Optional proposed map IDs.
                ## @return a string
                ## 
                def selected_maps
                    return @selected_maps
                end
                ## 
                ## Sets the selectedMaps property value. Optional proposed map IDs.
                ## @param value Value to set for the selectedMaps property.
                ## @return a void
                ## 
                def selected_maps=(value)
                    @selected_maps = value
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
                    writer.write_object_value("disputedRules", @disputed_rules)
                    writer.write_enum_value("mapPreferenceMode", @map_preference_mode)
                    writer.write_string_value("message", @message)
                    writer.write_collection_of_primitive_values("selectedMaps", @selected_maps)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the teamId property value. Team ID accepting the match.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Team ID accepting the match.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
            end
        end
    end
end
