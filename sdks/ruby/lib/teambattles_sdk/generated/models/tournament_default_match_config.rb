require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
            class TournamentDefaultMatchConfig
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
                @game_mode_id
                ## 
                # The gameSpecificOptions property
                @game_specific_options
                ## 
                # The inputDevice property
                @input_device
                ## 
                # Rule keys neither team may renegotiate on a generated match.
                @locked_rules
                ## 
                # Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
                @map_preference_mode
                ## 
                # The mapSelectionType property
                @map_selection_type
                ## 
                # The platform property
                @platform
                ## 
                # The region property
                @region
                ## 
                # Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
                @selected_maps
                ## 
                # The selectedObjectives property
                @selected_objectives
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
                ## Instantiates a new TournamentDefaultMatchConfig and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_default_match_config
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentDefaultMatchConfig.new
                end
                ## 
                ## Gets the gameModeId property value. Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
                ## @return a string
                ## 
                def game_mode_id
                    return @game_mode_id
                end
                ## 
                ## Sets the gameModeId property value. Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
                ## @param value Value to set for the gameModeId property.
                ## @return a void
                ## 
                def game_mode_id=(value)
                    @game_mode_id = value
                end
                ## 
                ## Gets the gameSpecificOptions property value. The gameSpecificOptions property
                ## @return a tournament_default_match_config_game_specific_options
                ## 
                def game_specific_options
                    return @game_specific_options
                end
                ## 
                ## Sets the gameSpecificOptions property value. The gameSpecificOptions property
                ## @param value Value to set for the gameSpecificOptions property.
                ## @return a void
                ## 
                def game_specific_options=(value)
                    @game_specific_options = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "gameModeId" => lambda {|n| @game_mode_id = n.get_string_value() },
                        "gameSpecificOptions" => lambda {|n| @game_specific_options = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigGameSpecificOptions.create_from_discriminator_value(pn) }) },
                        "inputDevice" => lambda {|n| @input_device = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigInputDevice) },
                        "lockedRules" => lambda {|n| @locked_rules = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigLockedRules.create_from_discriminator_value(pn) }) },
                        "mapPreferenceMode" => lambda {|n| @map_preference_mode = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigMapPreferenceMode) },
                        "mapSelectionType" => lambda {|n| @map_selection_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigMapSelectionType) },
                        "platform" => lambda {|n| @platform = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigPlatform) },
                        "region" => lambda {|n| @region = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfigRegion) },
                        "selectedMaps" => lambda {|n| @selected_maps = n.get_collection_of_primitive_values(String) },
                        "selectedObjectives" => lambda {|n| @selected_objectives = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the inputDevice property value. The inputDevice property
                ## @return a tournament_default_match_config_input_device
                ## 
                def input_device
                    return @input_device
                end
                ## 
                ## Sets the inputDevice property value. The inputDevice property
                ## @param value Value to set for the inputDevice property.
                ## @return a void
                ## 
                def input_device=(value)
                    @input_device = value
                end
                ## 
                ## Gets the lockedRules property value. Rule keys neither team may renegotiate on a generated match.
                ## @return a tournament_default_match_config_locked_rules
                ## 
                def locked_rules
                    return @locked_rules
                end
                ## 
                ## Sets the lockedRules property value. Rule keys neither team may renegotiate on a generated match.
                ## @param value Value to set for the lockedRules property.
                ## @return a void
                ## 
                def locked_rules=(value)
                    @locked_rules = value
                end
                ## 
                ## Gets the mapPreferenceMode property value. Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
                ## @return a tournament_default_match_config_map_preference_mode
                ## 
                def map_preference_mode
                    return @map_preference_mode
                end
                ## 
                ## Sets the mapPreferenceMode property value. Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
                ## @param value Value to set for the mapPreferenceMode property.
                ## @return a void
                ## 
                def map_preference_mode=(value)
                    @map_preference_mode = value
                end
                ## 
                ## Gets the mapSelectionType property value. The mapSelectionType property
                ## @return a tournament_default_match_config_map_selection_type
                ## 
                def map_selection_type
                    return @map_selection_type
                end
                ## 
                ## Sets the mapSelectionType property value. The mapSelectionType property
                ## @param value Value to set for the mapSelectionType property.
                ## @return a void
                ## 
                def map_selection_type=(value)
                    @map_selection_type = value
                end
                ## 
                ## Gets the platform property value. The platform property
                ## @return a tournament_default_match_config_platform
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. The platform property
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Gets the region property value. The region property
                ## @return a tournament_default_match_config_region
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. The region property
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Gets the selectedMaps property value. Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
                ## @return a string
                ## 
                def selected_maps
                    return @selected_maps
                end
                ## 
                ## Sets the selectedMaps property value. Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
                ## @param value Value to set for the selectedMaps property.
                ## @return a void
                ## 
                def selected_maps=(value)
                    @selected_maps = value
                end
                ## 
                ## Gets the selectedObjectives property value. The selectedObjectives property
                ## @return a string
                ## 
                def selected_objectives
                    return @selected_objectives
                end
                ## 
                ## Sets the selectedObjectives property value. The selectedObjectives property
                ## @param value Value to set for the selectedObjectives property.
                ## @return a void
                ## 
                def selected_objectives=(value)
                    @selected_objectives = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("gameModeId", @game_mode_id)
                    writer.write_object_value("gameSpecificOptions", @game_specific_options)
                    writer.write_enum_value("inputDevice", @input_device)
                    writer.write_object_value("lockedRules", @locked_rules)
                    writer.write_enum_value("mapPreferenceMode", @map_preference_mode)
                    writer.write_enum_value("mapSelectionType", @map_selection_type)
                    writer.write_enum_value("platform", @platform)
                    writer.write_enum_value("region", @region)
                    writer.write_collection_of_primitive_values("selectedMaps", @selected_maps)
                    writer.write_collection_of_primitive_values("selectedObjectives", @selected_objectives)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
