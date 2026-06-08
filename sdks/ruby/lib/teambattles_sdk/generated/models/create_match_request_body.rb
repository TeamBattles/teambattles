require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a new match as the API key owner.
            class CreateMatchRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Active roster user IDs (must be creator-team members).
                @active_roster
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional bench roster.
                @bench_roster
                ## 
                # Series length (best of N).
                @best_of
                ## 
                # Challenged team ID (required when isChallenge is true).
                @challenged_team_id
                ## 
                # Game ID for the match.
                @game_id
                ## 
                # Game mode ID (client-side definition).
                @game_mode_id
                ## 
                # Game-specific options.
                @game_specific_options
                ## 
                # Input device (defaults to ALL).
                @input_device
                ## 
                # Create as a direct challenge to another team.
                @is_challenge
                ## 
                # League ID for a league match.
                @league_id
                ## 
                # Locked rule flags.
                @locked_rules
                ## 
                # Map preference mode.
                @map_preference_mode
                ## 
                # Map selection type.
                @map_selection_type
                ## 
                # Match type.
                @match_type
                ## 
                # Optional match notes.
                @notes
                ## 
                # Platform (defaults to CROSSPLAY).
                @platform
                ## 
                # Publish status (defaults to DRAFT).
                @publish_status
                ## 
                # Region (defaults to NONE).
                @region
                ## 
                # Scheduled start (epoch ms).
                @scheduled_at
                ## 
                # Selected map IDs.
                @selected_maps
                ## 
                # Selected objective IDs.
                @selected_objectives
                ## 
                # Creator team ID. The owner must captain it.
                @team_id
                ## 
                # Players per team.
                @team_size
                ## 
                # Wager amount (WAGER matches only).
                @wager_amount
                ## 
                ## Gets the activeRoster property value. Active roster user IDs (must be creator-team members).
                ## @return a string
                ## 
                def active_roster
                    return @active_roster
                end
                ## 
                ## Sets the activeRoster property value. Active roster user IDs (must be creator-team members).
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
                ## Gets the benchRoster property value. Optional bench roster.
                ## @return a create_match_request_body_bench_roster
                ## 
                def bench_roster
                    return @bench_roster
                end
                ## 
                ## Sets the benchRoster property value. Optional bench roster.
                ## @param value Value to set for the benchRoster property.
                ## @return a void
                ## 
                def bench_roster=(value)
                    @bench_roster = value
                end
                ## 
                ## Gets the bestOf property value. Series length (best of N).
                ## @return a integer
                ## 
                def best_of
                    return @best_of
                end
                ## 
                ## Sets the bestOf property value. Series length (best of N).
                ## @param value Value to set for the bestOf property.
                ## @return a void
                ## 
                def best_of=(value)
                    @best_of = value
                end
                ## 
                ## Gets the challengedTeamId property value. Challenged team ID (required when isChallenge is true).
                ## @return a string
                ## 
                def challenged_team_id
                    return @challenged_team_id
                end
                ## 
                ## Sets the challengedTeamId property value. Challenged team ID (required when isChallenge is true).
                ## @param value Value to set for the challengedTeamId property.
                ## @return a void
                ## 
                def challenged_team_id=(value)
                    @challenged_team_id = value
                end
                ## 
                ## Instantiates a new CreateMatchRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_match_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateMatchRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Game ID for the match.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID for the match.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## Gets the gameModeId property value. Game mode ID (client-side definition).
                ## @return a string
                ## 
                def game_mode_id
                    return @game_mode_id
                end
                ## 
                ## Sets the gameModeId property value. Game mode ID (client-side definition).
                ## @param value Value to set for the gameModeId property.
                ## @return a void
                ## 
                def game_mode_id=(value)
                    @game_mode_id = value
                end
                ## 
                ## Gets the gameSpecificOptions property value. Game-specific options.
                ## @return a create_match_request_body_game_specific_options
                ## 
                def game_specific_options
                    return @game_specific_options
                end
                ## 
                ## Sets the gameSpecificOptions property value. Game-specific options.
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
                        "activeRoster" => lambda {|n| @active_roster = n.get_collection_of_primitive_values(String) },
                        "benchRoster" => lambda {|n| @bench_roster = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyBenchRoster.create_from_discriminator_value(pn) }) },
                        "bestOf" => lambda {|n| @best_of = n.get_number_value() },
                        "challengedTeamId" => lambda {|n| @challenged_team_id = n.get_string_value() },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "gameModeId" => lambda {|n| @game_mode_id = n.get_string_value() },
                        "gameSpecificOptions" => lambda {|n| @game_specific_options = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyGameSpecificOptions.create_from_discriminator_value(pn) }) },
                        "inputDevice" => lambda {|n| @input_device = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyInputDevice) },
                        "isChallenge" => lambda {|n| @is_challenge = n.get_boolean_value() },
                        "leagueId" => lambda {|n| @league_id = n.get_string_value() },
                        "lockedRules" => lambda {|n| @locked_rules = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyLockedRules.create_from_discriminator_value(pn) }) },
                        "mapPreferenceMode" => lambda {|n| @map_preference_mode = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyMapPreferenceMode) },
                        "mapSelectionType" => lambda {|n| @map_selection_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyMapSelectionType) },
                        "matchType" => lambda {|n| @match_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyMatchType) },
                        "notes" => lambda {|n| @notes = n.get_string_value() },
                        "platform" => lambda {|n| @platform = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyPlatform) },
                        "publishStatus" => lambda {|n| @publish_status = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyPublishStatus) },
                        "region" => lambda {|n| @region = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateMatchRequestBodyRegion) },
                        "scheduledAt" => lambda {|n| @scheduled_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "selectedMaps" => lambda {|n| @selected_maps = n.get_collection_of_primitive_values(String) },
                        "selectedObjectives" => lambda {|n| @selected_objectives = n.get_collection_of_primitive_values(String) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamSize" => lambda {|n| @team_size = n.get_number_value() },
                        "wagerAmount" => lambda {|n| @wager_amount = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the inputDevice property value. Input device (defaults to ALL).
                ## @return a create_match_request_body_input_device
                ## 
                def input_device
                    return @input_device
                end
                ## 
                ## Sets the inputDevice property value. Input device (defaults to ALL).
                ## @param value Value to set for the inputDevice property.
                ## @return a void
                ## 
                def input_device=(value)
                    @input_device = value
                end
                ## 
                ## Gets the isChallenge property value. Create as a direct challenge to another team.
                ## @return a boolean
                ## 
                def is_challenge
                    return @is_challenge
                end
                ## 
                ## Sets the isChallenge property value. Create as a direct challenge to another team.
                ## @param value Value to set for the isChallenge property.
                ## @return a void
                ## 
                def is_challenge=(value)
                    @is_challenge = value
                end
                ## 
                ## Gets the leagueId property value. League ID for a league match.
                ## @return a string
                ## 
                def league_id
                    return @league_id
                end
                ## 
                ## Sets the leagueId property value. League ID for a league match.
                ## @param value Value to set for the leagueId property.
                ## @return a void
                ## 
                def league_id=(value)
                    @league_id = value
                end
                ## 
                ## Gets the lockedRules property value. Locked rule flags.
                ## @return a create_match_request_body_locked_rules
                ## 
                def locked_rules
                    return @locked_rules
                end
                ## 
                ## Sets the lockedRules property value. Locked rule flags.
                ## @param value Value to set for the lockedRules property.
                ## @return a void
                ## 
                def locked_rules=(value)
                    @locked_rules = value
                end
                ## 
                ## Gets the mapPreferenceMode property value. Map preference mode.
                ## @return a create_match_request_body_map_preference_mode
                ## 
                def map_preference_mode
                    return @map_preference_mode
                end
                ## 
                ## Sets the mapPreferenceMode property value. Map preference mode.
                ## @param value Value to set for the mapPreferenceMode property.
                ## @return a void
                ## 
                def map_preference_mode=(value)
                    @map_preference_mode = value
                end
                ## 
                ## Gets the mapSelectionType property value. Map selection type.
                ## @return a create_match_request_body_map_selection_type
                ## 
                def map_selection_type
                    return @map_selection_type
                end
                ## 
                ## Sets the mapSelectionType property value. Map selection type.
                ## @param value Value to set for the mapSelectionType property.
                ## @return a void
                ## 
                def map_selection_type=(value)
                    @map_selection_type = value
                end
                ## 
                ## Gets the matchType property value. Match type.
                ## @return a create_match_request_body_match_type
                ## 
                def match_type
                    return @match_type
                end
                ## 
                ## Sets the matchType property value. Match type.
                ## @param value Value to set for the matchType property.
                ## @return a void
                ## 
                def match_type=(value)
                    @match_type = value
                end
                ## 
                ## Gets the notes property value. Optional match notes.
                ## @return a string
                ## 
                def notes
                    return @notes
                end
                ## 
                ## Sets the notes property value. Optional match notes.
                ## @param value Value to set for the notes property.
                ## @return a void
                ## 
                def notes=(value)
                    @notes = value
                end
                ## 
                ## Gets the platform property value. Platform (defaults to CROSSPLAY).
                ## @return a create_match_request_body_platform
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. Platform (defaults to CROSSPLAY).
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Gets the publishStatus property value. Publish status (defaults to DRAFT).
                ## @return a create_match_request_body_publish_status
                ## 
                def publish_status
                    return @publish_status
                end
                ## 
                ## Sets the publishStatus property value. Publish status (defaults to DRAFT).
                ## @param value Value to set for the publishStatus property.
                ## @return a void
                ## 
                def publish_status=(value)
                    @publish_status = value
                end
                ## 
                ## Gets the region property value. Region (defaults to NONE).
                ## @return a create_match_request_body_region
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. Region (defaults to NONE).
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Gets the scheduledAt property value. Scheduled start (epoch ms).
                ## @return a double
                ## 
                def scheduled_at
                    return @scheduled_at
                end
                ## 
                ## Sets the scheduledAt property value. Scheduled start (epoch ms).
                ## @param value Value to set for the scheduledAt property.
                ## @return a void
                ## 
                def scheduled_at=(value)
                    @scheduled_at = value
                end
                ## 
                ## Gets the selectedMaps property value. Selected map IDs.
                ## @return a string
                ## 
                def selected_maps
                    return @selected_maps
                end
                ## 
                ## Sets the selectedMaps property value. Selected map IDs.
                ## @param value Value to set for the selectedMaps property.
                ## @return a void
                ## 
                def selected_maps=(value)
                    @selected_maps = value
                end
                ## 
                ## Gets the selectedObjectives property value. Selected objective IDs.
                ## @return a string
                ## 
                def selected_objectives
                    return @selected_objectives
                end
                ## 
                ## Sets the selectedObjectives property value. Selected objective IDs.
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
                    writer.write_collection_of_primitive_values("activeRoster", @active_roster)
                    writer.write_collection_of_object_values("benchRoster", @bench_roster)
                    writer.write_number_value("bestOf", @best_of)
                    writer.write_string_value("challengedTeamId", @challenged_team_id)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("gameModeId", @game_mode_id)
                    writer.write_object_value("gameSpecificOptions", @game_specific_options)
                    writer.write_enum_value("inputDevice", @input_device)
                    writer.write_boolean_value("isChallenge", @is_challenge)
                    writer.write_string_value("leagueId", @league_id)
                    writer.write_object_value("lockedRules", @locked_rules)
                    writer.write_enum_value("mapPreferenceMode", @map_preference_mode)
                    writer.write_enum_value("mapSelectionType", @map_selection_type)
                    writer.write_enum_value("matchType", @match_type)
                    writer.write_string_value("notes", @notes)
                    writer.write_enum_value("platform", @platform)
                    writer.write_enum_value("publishStatus", @publish_status)
                    writer.write_enum_value("region", @region)
                    writer.write_object_value("scheduledAt", @scheduled_at)
                    writer.write_collection_of_primitive_values("selectedMaps", @selected_maps)
                    writer.write_collection_of_primitive_values("selectedObjectives", @selected_objectives)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_number_value("teamSize", @team_size)
                    writer.write_object_value("wagerAmount", @wager_amount)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the teamId property value. Creator team ID. The owner must captain it.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Creator team ID. The owner must captain it.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the teamSize property value. Players per team.
                ## @return a integer
                ## 
                def team_size
                    return @team_size
                end
                ## 
                ## Sets the teamSize property value. Players per team.
                ## @param value Value to set for the teamSize property.
                ## @return a void
                ## 
                def team_size=(value)
                    @team_size = value
                end
                ## 
                ## Gets the wagerAmount property value. Wager amount (WAGER matches only).
                ## @return a double
                ## 
                def wager_amount
                    return @wager_amount
                end
                ## 
                ## Sets the wagerAmount property value. Wager amount (WAGER matches only).
                ## @param value Value to set for the wagerAmount property.
                ## @return a void
                ## 
                def wager_amount=(value)
                    @wager_amount = value
                end
            end
        end
    end
end
