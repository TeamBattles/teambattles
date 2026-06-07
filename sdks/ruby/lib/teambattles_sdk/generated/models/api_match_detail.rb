require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
            class ApiMatchDetail
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The acceptedTeam property
                @accepted_team
                ##
                # The bestOf property
                @best_of
                ##
                # The challengedTeam property
                @challenged_team
                ##
                # The completedAt property
                @completed_at
                ##
                # The createdAt property
                @created_at
                ##
                # The creatorTeam property
                @creator_team
                ##
                # Game definition.
                @game
                ##
                # The gameMode property
                @game_mode
                ##
                # The id property
                @id
                ##
                # The leagueId property
                @league_id
                ##
                # The leagueSeasonId property
                @league_season_id
                ##
                # The matchType property
                @match_type
                ##
                # The platform property
                @platform
                ##
                # The publishStatus property
                @publish_status
                ##
                # The region property
                @region
                ##
                # The scheduledAt property
                @scheduled_at
                ##
                # The selectedMaps property
                @selected_maps
                ##
                # The selectedObjectives property
                @selected_objectives
                ##
                # The startedAt property
                @started_at
                ##
                # Lifecycle status of a match.
                @status
                ##
                # The teamSize property
                @team_size
                ##
                # The winnerTeamId property
                @winner_team_id
                ##
                ## Gets the acceptedTeam property value. The acceptedTeam property
                ## @return a api_match_team
                ##
                def accepted_team
                    return @accepted_team
                end
                ##
                ## Sets the acceptedTeam property value. The acceptedTeam property
                ## @param value Value to set for the acceptedTeam property.
                ## @return a void
                ##
                def accepted_team=(value)
                    @accepted_team = value
                end
                ##
                ## Gets the bestOf property value. The bestOf property
                ## @return a integer
                ##
                def best_of
                    return @best_of
                end
                ##
                ## Sets the bestOf property value. The bestOf property
                ## @param value Value to set for the bestOf property.
                ## @return a void
                ##
                def best_of=(value)
                    @best_of = value
                end
                ##
                ## Gets the challengedTeam property value. The challengedTeam property
                ## @return a api_match_team
                ##
                def challenged_team
                    return @challenged_team
                end
                ##
                ## Sets the challengedTeam property value. The challengedTeam property
                ## @param value Value to set for the challengedTeam property.
                ## @return a void
                ##
                def challenged_team=(value)
                    @challenged_team = value
                end
                ##
                ## Gets the completedAt property value. The completedAt property
                ## @return a api_match_detail_completed_at
                ##
                def completed_at
                    return @completed_at
                end
                ##
                ## Sets the completedAt property value. The completedAt property
                ## @param value Value to set for the completedAt property.
                ## @return a void
                ##
                def completed_at=(value)
                    @completed_at = value
                end
                ##
                ## Gets the createdAt property value. The createdAt property
                ## @return a api_match_detail_created_at
                ##
                def created_at
                    return @created_at
                end
                ##
                ## Sets the createdAt property value. The createdAt property
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ##
                def created_at=(value)
                    @created_at = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_match_detail
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiMatchDetail.new
                end
                ##
                ## Gets the creatorTeam property value. The creatorTeam property
                ## @return a api_match_team
                ##
                def creator_team
                    return @creator_team
                end
                ##
                ## Sets the creatorTeam property value. The creatorTeam property
                ## @param value Value to set for the creatorTeam property.
                ## @return a void
                ##
                def creator_team=(value)
                    @creator_team = value
                end
                ##
                ## Gets the game property value. Game definition.
                ## @return a game
                ##
                def game
                    return @game
                end
                ##
                ## Sets the game property value. Game definition.
                ## @param value Value to set for the game property.
                ## @return a void
                ##
                def game=(value)
                    @game = value
                end
                ##
                ## Gets the gameMode property value. The gameMode property
                ## @return a string
                ##
                def game_mode
                    return @game_mode
                end
                ##
                ## Sets the gameMode property value. The gameMode property
                ## @param value Value to set for the gameMode property.
                ## @return a void
                ##
                def game_mode=(value)
                    @game_mode = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "acceptedTeam" => lambda {|n| @accepted_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchTeam.create_from_discriminator_value(pn) }) },
                        "bestOf" => lambda {|n| @best_of = n.get_number_value() },
                        "challengedTeam" => lambda {|n| @challenged_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchTeam.create_from_discriminator_value(pn) }) },
                        "completedAt" => lambda {|n| @completed_at = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailCompletedAt.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailCreatedAt.create_from_discriminator_value(pn) }) },
                        "creatorTeam" => lambda {|n| @creator_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchTeam.create_from_discriminator_value(pn) }) },
                        "game" => lambda {|n| @game = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::Game.create_from_discriminator_value(pn) }) },
                        "gameMode" => lambda {|n| @game_mode = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "leagueId" => lambda {|n| @league_id = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailLeagueId.create_from_discriminator_value(pn) }) },
                        "leagueSeasonId" => lambda {|n| @league_season_id = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailLeagueSeasonId.create_from_discriminator_value(pn) }) },
                        "matchType" => lambda {|n| @match_type = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailMatchType.create_from_discriminator_value(pn) }) },
                        "platform" => lambda {|n| @platform = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailPlatform.create_from_discriminator_value(pn) }) },
                        "publishStatus" => lambda {|n| @publish_status = n.get_string_value() },
                        "region" => lambda {|n| @region = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailRegion.create_from_discriminator_value(pn) }) },
                        "scheduledAt" => lambda {|n| @scheduled_at = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailScheduledAt.create_from_discriminator_value(pn) }) },
                        "selectedMaps" => lambda {|n| @selected_maps = n.get_collection_of_primitive_values(String) },
                        "selectedObjectives" => lambda {|n| @selected_objectives = n.get_collection_of_primitive_values(String) },
                        "startedAt" => lambda {|n| @started_at = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailStartedAt.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::MatchStatus) },
                        "teamSize" => lambda {|n| @team_size = n.get_number_value() },
                        "winnerTeamId" => lambda {|n| @winner_team_id = n.get_object_value(lambda {|pn| ApiMatchDetail::ApiMatchDetailWinnerTeamId.create_from_discriminator_value(pn) }) },
                    }
                end
                ##
                ## Gets the id property value. The id property
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. The id property
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the leagueId property value. The leagueId property
                ## @return a api_match_detail_league_id
                ##
                def league_id
                    return @league_id
                end
                ##
                ## Sets the leagueId property value. The leagueId property
                ## @param value Value to set for the leagueId property.
                ## @return a void
                ##
                def league_id=(value)
                    @league_id = value
                end
                ##
                ## Gets the leagueSeasonId property value. The leagueSeasonId property
                ## @return a api_match_detail_league_season_id
                ##
                def league_season_id
                    return @league_season_id
                end
                ##
                ## Sets the leagueSeasonId property value. The leagueSeasonId property
                ## @param value Value to set for the leagueSeasonId property.
                ## @return a void
                ##
                def league_season_id=(value)
                    @league_season_id = value
                end
                ##
                ## Gets the matchType property value. The matchType property
                ## @return a api_match_detail_match_type
                ##
                def match_type
                    return @match_type
                end
                ##
                ## Sets the matchType property value. The matchType property
                ## @param value Value to set for the matchType property.
                ## @return a void
                ##
                def match_type=(value)
                    @match_type = value
                end
                ##
                ## Gets the platform property value. The platform property
                ## @return a api_match_detail_platform
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
                ## Gets the publishStatus property value. The publishStatus property
                ## @return a string
                ##
                def publish_status
                    return @publish_status
                end
                ##
                ## Sets the publishStatus property value. The publishStatus property
                ## @param value Value to set for the publishStatus property.
                ## @return a void
                ##
                def publish_status=(value)
                    @publish_status = value
                end
                ##
                ## Gets the region property value. The region property
                ## @return a api_match_detail_region
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
                ## Gets the scheduledAt property value. The scheduledAt property
                ## @return a api_match_detail_scheduled_at
                ##
                def scheduled_at
                    return @scheduled_at
                end
                ##
                ## Sets the scheduledAt property value. The scheduledAt property
                ## @param value Value to set for the scheduledAt property.
                ## @return a void
                ##
                def scheduled_at=(value)
                    @scheduled_at = value
                end
                ##
                ## Gets the selectedMaps property value. The selectedMaps property
                ## @return a string
                ##
                def selected_maps
                    return @selected_maps
                end
                ##
                ## Sets the selectedMaps property value. The selectedMaps property
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
                    writer.write_object_value("acceptedTeam", @accepted_team)
                    writer.write_number_value("bestOf", @best_of)
                    writer.write_object_value("challengedTeam", @challenged_team)
                    writer.write_object_value("completedAt", @completed_at)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_object_value("creatorTeam", @creator_team)
                    writer.write_object_value("game", @game)
                    writer.write_string_value("gameMode", @game_mode)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("leagueId", @league_id)
                    writer.write_object_value("leagueSeasonId", @league_season_id)
                    writer.write_object_value("matchType", @match_type)
                    writer.write_object_value("platform", @platform)
                    writer.write_string_value("publishStatus", @publish_status)
                    writer.write_object_value("region", @region)
                    writer.write_object_value("scheduledAt", @scheduled_at)
                    writer.write_collection_of_primitive_values("selectedMaps", @selected_maps)
                    writer.write_collection_of_primitive_values("selectedObjectives", @selected_objectives)
                    writer.write_object_value("startedAt", @started_at)
                    writer.write_enum_value("status", @status)
                    writer.write_number_value("teamSize", @team_size)
                    writer.write_object_value("winnerTeamId", @winner_team_id)
                end
                ##
                ## Gets the startedAt property value. The startedAt property
                ## @return a api_match_detail_started_at
                ##
                def started_at
                    return @started_at
                end
                ##
                ## Sets the startedAt property value. The startedAt property
                ## @param value Value to set for the startedAt property.
                ## @return a void
                ##
                def started_at=(value)
                    @started_at = value
                end
                ##
                ## Gets the status property value. Lifecycle status of a match.
                ## @return a match_status
                ##
                def status
                    return @status
                end
                ##
                ## Sets the status property value. Lifecycle status of a match.
                ## @param value Value to set for the status property.
                ## @return a void
                ##
                def status=(value)
                    @status = value
                end
                ##
                ## Gets the teamSize property value. The teamSize property
                ## @return a integer
                ##
                def team_size
                    return @team_size
                end
                ##
                ## Sets the teamSize property value. The teamSize property
                ## @param value Value to set for the teamSize property.
                ## @return a void
                ##
                def team_size=(value)
                    @team_size = value
                end
                ##
                ## Gets the winnerTeamId property value. The winnerTeamId property
                ## @return a api_match_detail_winner_team_id
                ##
                def winner_team_id
                    return @winner_team_id
                end
                ##
                ## Sets the winnerTeamId property value. The winnerTeamId property
                ## @param value Value to set for the winnerTeamId property.
                ## @return a void
                ##
                def winner_team_id=(value)
                    @winner_team_id = value
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailCompletedAtMember1, string
                class ApiMatchDetailCompletedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailCompletedAtMember1
                    @api_match_detail_completed_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_completedAtMember1 property value. Composed type representation for type ApiMatchDetailCompletedAtMember1
                    ## @return a api_match_detail_completed_at_member1
                    ##
                    def api_match_detail_completed_at_member1
                        return @api_match_detail_completed_at_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_completedAtMember1 property value. Composed type representation for type ApiMatchDetailCompletedAtMember1
                    ## @param value Value to set for the ApiMatchDetail_completedAtMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_completed_at_member1=(value)
                        @api_match_detail_completed_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_completed_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailCompletedAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_completedAtMember1" => lambda {|n| @api_match_detail_completed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailCompletedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_completedAtMember1", @api_match_detail_completed_at_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailCreatedAtMember1, string
                class ApiMatchDetailCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailCreatedAtMember1
                    @api_match_detail_created_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_createdAtMember1 property value. Composed type representation for type ApiMatchDetailCreatedAtMember1
                    ## @return a api_match_detail_created_at_member1
                    ##
                    def api_match_detail_created_at_member1
                        return @api_match_detail_created_at_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_createdAtMember1 property value. Composed type representation for type ApiMatchDetailCreatedAtMember1
                    ## @param value Value to set for the ApiMatchDetail_createdAtMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_created_at_member1=(value)
                        @api_match_detail_created_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_created_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailCreatedAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_createdAtMember1" => lambda {|n| @api_match_detail_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailCreatedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_createdAtMember1", @api_match_detail_created_at_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailLeagueIdMember1, string
                class ApiMatchDetailLeagueId
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailLeagueIdMember1
                    @api_match_detail_league_id_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_leagueIdMember1 property value. Composed type representation for type ApiMatchDetailLeagueIdMember1
                    ## @return a api_match_detail_league_id_member1
                    ##
                    def api_match_detail_league_id_member1
                        return @api_match_detail_league_id_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_leagueIdMember1 property value. Composed type representation for type ApiMatchDetailLeagueIdMember1
                    ## @param value Value to set for the ApiMatchDetail_leagueIdMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_league_id_member1=(value)
                        @api_match_detail_league_id_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_league_id
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailLeagueId.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_leagueIdMember1" => lambda {|n| @api_match_detail_league_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailLeagueIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_leagueIdMember1", @api_match_detail_league_id_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailLeagueSeasonIdMember1, string
                class ApiMatchDetailLeagueSeasonId
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailLeagueSeasonIdMember1
                    @api_match_detail_league_season_id_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type ApiMatchDetailLeagueSeasonIdMember1
                    ## @return a api_match_detail_league_season_id_member1
                    ##
                    def api_match_detail_league_season_id_member1
                        return @api_match_detail_league_season_id_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type ApiMatchDetailLeagueSeasonIdMember1
                    ## @param value Value to set for the ApiMatchDetail_leagueSeasonIdMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_league_season_id_member1=(value)
                        @api_match_detail_league_season_id_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_league_season_id
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailLeagueSeasonId.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_leagueSeasonIdMember1" => lambda {|n| @api_match_detail_league_season_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailLeagueSeasonIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_leagueSeasonIdMember1", @api_match_detail_league_season_id_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailMatchTypeMember1, string
                class ApiMatchDetailMatchType
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailMatchTypeMember1
                    @api_match_detail_match_type_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_matchTypeMember1 property value. Composed type representation for type ApiMatchDetailMatchTypeMember1
                    ## @return a api_match_detail_match_type_member1
                    ##
                    def api_match_detail_match_type_member1
                        return @api_match_detail_match_type_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_matchTypeMember1 property value. Composed type representation for type ApiMatchDetailMatchTypeMember1
                    ## @param value Value to set for the ApiMatchDetail_matchTypeMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_match_type_member1=(value)
                        @api_match_detail_match_type_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_match_type
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailMatchType.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_matchTypeMember1" => lambda {|n| @api_match_detail_match_type_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailMatchTypeMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_matchTypeMember1", @api_match_detail_match_type_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailPlatformMember1, string
                class ApiMatchDetailPlatform
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailPlatformMember1
                    @api_match_detail_platform_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_platformMember1 property value. Composed type representation for type ApiMatchDetailPlatformMember1
                    ## @return a api_match_detail_platform_member1
                    ##
                    def api_match_detail_platform_member1
                        return @api_match_detail_platform_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_platformMember1 property value. Composed type representation for type ApiMatchDetailPlatformMember1
                    ## @param value Value to set for the ApiMatchDetail_platformMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_platform_member1=(value)
                        @api_match_detail_platform_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_platform
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailPlatform.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_platformMember1" => lambda {|n| @api_match_detail_platform_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailPlatformMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_platformMember1", @api_match_detail_platform_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailRegionMember1, string
                class ApiMatchDetailRegion
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailRegionMember1
                    @api_match_detail_region_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_regionMember1 property value. Composed type representation for type ApiMatchDetailRegionMember1
                    ## @return a api_match_detail_region_member1
                    ##
                    def api_match_detail_region_member1
                        return @api_match_detail_region_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_regionMember1 property value. Composed type representation for type ApiMatchDetailRegionMember1
                    ## @param value Value to set for the ApiMatchDetail_regionMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_region_member1=(value)
                        @api_match_detail_region_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_region
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailRegion.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_regionMember1" => lambda {|n| @api_match_detail_region_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailRegionMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_regionMember1", @api_match_detail_region_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailScheduledAtMember1, string
                class ApiMatchDetailScheduledAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailScheduledAtMember1
                    @api_match_detail_scheduled_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_scheduledAtMember1 property value. Composed type representation for type ApiMatchDetailScheduledAtMember1
                    ## @return a api_match_detail_scheduled_at_member1
                    ##
                    def api_match_detail_scheduled_at_member1
                        return @api_match_detail_scheduled_at_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_scheduledAtMember1 property value. Composed type representation for type ApiMatchDetailScheduledAtMember1
                    ## @param value Value to set for the ApiMatchDetail_scheduledAtMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_scheduled_at_member1=(value)
                        @api_match_detail_scheduled_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_scheduled_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailScheduledAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_scheduledAtMember1" => lambda {|n| @api_match_detail_scheduled_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailScheduledAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_scheduledAtMember1", @api_match_detail_scheduled_at_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailStartedAtMember1, string
                class ApiMatchDetailStartedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailStartedAtMember1
                    @api_match_detail_started_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_startedAtMember1 property value. Composed type representation for type ApiMatchDetailStartedAtMember1
                    ## @return a api_match_detail_started_at_member1
                    ##
                    def api_match_detail_started_at_member1
                        return @api_match_detail_started_at_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_startedAtMember1 property value. Composed type representation for type ApiMatchDetailStartedAtMember1
                    ## @param value Value to set for the ApiMatchDetail_startedAtMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_started_at_member1=(value)
                        @api_match_detail_started_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_started_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailStartedAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_startedAtMember1" => lambda {|n| @api_match_detail_started_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailStartedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_startedAtMember1", @api_match_detail_started_at_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end

                ##
                # Composed type wrapper for classes ApiMatchDetailWinnerTeamIdMember1, string
                class ApiMatchDetailWinnerTeamId
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiMatchDetailWinnerTeamIdMember1
                    @api_match_detail_winner_team_id_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type ApiMatchDetailWinnerTeamIdMember1
                    ## @return a api_match_detail_winner_team_id_member1
                    ##
                    def api_match_detail_winner_team_id_member1
                        return @api_match_detail_winner_team_id_member1
                    end
                    ##
                    ## Sets the ApiMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type ApiMatchDetailWinnerTeamIdMember1
                    ## @param value Value to set for the ApiMatchDetail_winnerTeamIdMember1 property.
                    ## @return a void
                    ##
                    def api_match_detail_winner_team_id_member1=(value)
                        @api_match_detail_winner_team_id_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_detail_winner_team_id
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchDetailWinnerTeamId.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiMatchDetail_winnerTeamIdMember1" => lambda {|n| @api_match_detail_winner_team_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailWinnerTeamIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchDetail_winnerTeamIdMember1", @api_match_detail_winner_team_id_member1)
                        writer.write_string_value("string", @string)
                    end
                    ##
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ##
                    def string
                        return @string
                    end
                    ##
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ##
                    def string=(value)
                        @string = value
                    end
                end
            end
        end
    end
end
