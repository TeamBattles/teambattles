require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
            class GameCreateMatchBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ##
                # ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
                @accepted_team_id
                ##
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ##
                # Number of maps in the series (1, 3, 5, or 7).
                @best_of
                ##
                # ID of the creating team. Must belong to the key's bound game.
                @creator_team_id
                ##
                # Game mode identifier (e.g. search_and_destroy).
                @game_mode_id
                ##
                # Allowed input device (e.g. ALL).
                @input_device
                ##
                # Map preference mode (PREFERRED, VETO, or MANUAL).
                @map_preference_mode
                ##
                # Map selection type (COMPETITIVE or FLEX).
                @map_selection_type
                ##
                # Match platform (e.g. CROSSPLAY).
                @platform
                ##
                # Match region (e.g. NONE).
                @region
                ##
                # Optional scheduled start time (epoch ms).
                @scheduled_at
                ##
                # Optional pre-selected map IDs.
                @selected_maps
                ##
                # Optional pre-selected objective IDs.
                @selected_objectives
                ##
                # Players per team (validated against the game's min/max).
                @team_size
                ##
                ## Gets the acceptedTeamId property value. ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
                ## @return a string
                ##
                def accepted_team_id
                    return @accepted_team_id
                end
                ##
                ## Sets the acceptedTeamId property value. ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
                ## @param value Value to set for the acceptedTeamId property.
                ## @return a void
                ##
                def accepted_team_id=(value)
                    @accepted_team_id = value
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
                ## Gets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
                ## @return a double
                ##
                def best_of
                    return @best_of
                end
                ##
                ## Sets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
                ## @param value Value to set for the bestOf property.
                ## @return a void
                ##
                def best_of=(value)
                    @best_of = value
                end
                ##
                ## Instantiates a new GameCreateMatchBody and sets the default values.
                ## @return a void
                ##
                def initialize()
                    @additional_data = Hash.new
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_create_match_body
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameCreateMatchBody.new
                end
                ##
                ## Gets the creatorTeamId property value. ID of the creating team. Must belong to the key's bound game.
                ## @return a string
                ##
                def creator_team_id
                    return @creator_team_id
                end
                ##
                ## Sets the creatorTeamId property value. ID of the creating team. Must belong to the key's bound game.
                ## @param value Value to set for the creatorTeamId property.
                ## @return a void
                ##
                def creator_team_id=(value)
                    @creator_team_id = value
                end
                ##
                ## Gets the gameModeId property value. Game mode identifier (e.g. search_and_destroy).
                ## @return a string
                ##
                def game_mode_id
                    return @game_mode_id
                end
                ##
                ## Sets the gameModeId property value. Game mode identifier (e.g. search_and_destroy).
                ## @param value Value to set for the gameModeId property.
                ## @return a void
                ##
                def game_mode_id=(value)
                    @game_mode_id = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "acceptedTeamId" => lambda {|n| @accepted_team_id = n.get_string_value() },
                        "bestOf" => lambda {|n| @best_of = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "creatorTeamId" => lambda {|n| @creator_team_id = n.get_string_value() },
                        "gameModeId" => lambda {|n| @game_mode_id = n.get_string_value() },
                        "inputDevice" => lambda {|n| @input_device = n.get_enum_value(TeamBattlesSdk::Generated::Models::GameCreateMatchBodyInputDevice) },
                        "mapPreferenceMode" => lambda {|n| @map_preference_mode = n.get_enum_value(TeamBattlesSdk::Generated::Models::GameCreateMatchBodyMapPreferenceMode) },
                        "mapSelectionType" => lambda {|n| @map_selection_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::GameCreateMatchBodyMapSelectionType) },
                        "platform" => lambda {|n| @platform = n.get_enum_value(TeamBattlesSdk::Generated::Models::GameCreateMatchBodyPlatform) },
                        "region" => lambda {|n| @region = n.get_enum_value(TeamBattlesSdk::Generated::Models::GameCreateMatchBodyRegion) },
                        "scheduledAt" => lambda {|n| @scheduled_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "selectedMaps" => lambda {|n| @selected_maps = n.get_collection_of_primitive_values(String) },
                        "selectedObjectives" => lambda {|n| @selected_objectives = n.get_collection_of_primitive_values(String) },
                        "teamSize" => lambda {|n| @team_size = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ##
                ## Gets the inputDevice property value. Allowed input device (e.g. ALL).
                ## @return a game_create_match_body_input_device
                ##
                def input_device
                    return @input_device
                end
                ##
                ## Sets the inputDevice property value. Allowed input device (e.g. ALL).
                ## @param value Value to set for the inputDevice property.
                ## @return a void
                ##
                def input_device=(value)
                    @input_device = value
                end
                ##
                ## Gets the mapPreferenceMode property value. Map preference mode (PREFERRED, VETO, or MANUAL).
                ## @return a game_create_match_body_map_preference_mode
                ##
                def map_preference_mode
                    return @map_preference_mode
                end
                ##
                ## Sets the mapPreferenceMode property value. Map preference mode (PREFERRED, VETO, or MANUAL).
                ## @param value Value to set for the mapPreferenceMode property.
                ## @return a void
                ##
                def map_preference_mode=(value)
                    @map_preference_mode = value
                end
                ##
                ## Gets the mapSelectionType property value. Map selection type (COMPETITIVE or FLEX).
                ## @return a game_create_match_body_map_selection_type
                ##
                def map_selection_type
                    return @map_selection_type
                end
                ##
                ## Sets the mapSelectionType property value. Map selection type (COMPETITIVE or FLEX).
                ## @param value Value to set for the mapSelectionType property.
                ## @return a void
                ##
                def map_selection_type=(value)
                    @map_selection_type = value
                end
                ##
                ## Gets the platform property value. Match platform (e.g. CROSSPLAY).
                ## @return a game_create_match_body_platform
                ##
                def platform
                    return @platform
                end
                ##
                ## Sets the platform property value. Match platform (e.g. CROSSPLAY).
                ## @param value Value to set for the platform property.
                ## @return a void
                ##
                def platform=(value)
                    @platform = value
                end
                ##
                ## Gets the region property value. Match region (e.g. NONE).
                ## @return a game_create_match_body_region
                ##
                def region
                    return @region
                end
                ##
                ## Sets the region property value. Match region (e.g. NONE).
                ## @param value Value to set for the region property.
                ## @return a void
                ##
                def region=(value)
                    @region = value
                end
                ##
                ## Gets the scheduledAt property value. Optional scheduled start time (epoch ms).
                ## @return a double
                ##
                def scheduled_at
                    return @scheduled_at
                end
                ##
                ## Sets the scheduledAt property value. Optional scheduled start time (epoch ms).
                ## @param value Value to set for the scheduledAt property.
                ## @return a void
                ##
                def scheduled_at=(value)
                    @scheduled_at = value
                end
                ##
                ## Gets the selectedMaps property value. Optional pre-selected map IDs.
                ## @return a string
                ##
                def selected_maps
                    return @selected_maps
                end
                ##
                ## Sets the selectedMaps property value. Optional pre-selected map IDs.
                ## @param value Value to set for the selectedMaps property.
                ## @return a void
                ##
                def selected_maps=(value)
                    @selected_maps = value
                end
                ##
                ## Gets the selectedObjectives property value. Optional pre-selected objective IDs.
                ## @return a string
                ##
                def selected_objectives
                    return @selected_objectives
                end
                ##
                ## Sets the selectedObjectives property value. Optional pre-selected objective IDs.
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
                    writer.write_string_value("acceptedTeamId", @accepted_team_id)
                    writer.write_object_value("bestOf", @best_of)
                    writer.write_string_value("creatorTeamId", @creator_team_id)
                    writer.write_string_value("gameModeId", @game_mode_id)
                    writer.write_enum_value("inputDevice", @input_device)
                    writer.write_enum_value("mapPreferenceMode", @map_preference_mode)
                    writer.write_enum_value("mapSelectionType", @map_selection_type)
                    writer.write_enum_value("platform", @platform)
                    writer.write_enum_value("region", @region)
                    writer.write_object_value("scheduledAt", @scheduled_at)
                    writer.write_collection_of_primitive_values("selectedMaps", @selected_maps)
                    writer.write_collection_of_primitive_values("selectedObjectives", @selected_objectives)
                    writer.write_object_value("teamSize", @team_size)
                    writer.write_additional_data(@additional_data)
                end
                ##
                ## Gets the teamSize property value. Players per team (validated against the game's min/max).
                ## @return a double
                ##
                def team_size
                    return @team_size
                end
                ##
                ## Sets the teamSize property value. Players per team (validated against the game's min/max).
                ## @param value Value to set for the teamSize property.
                ## @return a void
                ##
                def team_size=(value)
                    @team_size = value
                end
            end
        end
    end
end
