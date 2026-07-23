require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/tournament_profile_response'
require_relative '../../team_battles_sdk::_generated'
require_relative '../tournaments'
require_relative './activity_feed/activity_feed_request_builder'
require_relative './applications/applications_request_builder'
require_relative './bracket/bracket_request_builder'
require_relative './cancel/cancel_request_builder'
require_relative './free_agency/free_agency_request_builder'
require_relative './free_agents/free_agents_request_builder'
require_relative './invites/invites_request_builder'
require_relative './item'
require_relative './league_points/league_points_request_builder'
require_relative './me/me_request_builder'
require_relative './nodes/nodes_request_builder'
require_relative './participants/participants_request_builder'
require_relative './regenerate_matches/regenerate_matches_request_builder'
require_relative './registration/registration_request_builder'
require_relative './roster_entries/roster_entries_request_builder'
require_relative './rounds/rounds_request_builder'
require_relative './staff/staff_request_builder'
require_relative './start/start_request_builder'
require_relative './submit_for_approval/submit_for_approval_request_builder'
require_relative './teams/teams_request_builder'
require_relative './update/update_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                ## 
                # Builds and executes requests for operations under #tournaments#{identifier}
                class WithIdentifierItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The activityFeed property
                    def activity_feed()
                        return TeamBattlesSdk::Generated::Tournaments::Item::ActivityFeed::ActivityFeedRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The applications property
                    def applications()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Applications::ApplicationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The bracket property
                    def bracket()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Bracket::BracketRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The cancel property
                    def cancel()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Cancel::CancelRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The freeAgency property
                    def free_agency()
                        return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgency::FreeAgencyRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The freeAgents property
                    def free_agents()
                        return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgents::FreeAgentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The invites property
                    def invites()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Invites::InvitesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The leaguePoints property
                    def league_points()
                        return TeamBattlesSdk::Generated::Tournaments::Item::LeaguePoints::LeaguePointsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The me property
                    def me()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Me::MeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The nodes property
                    def nodes()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Nodes::NodesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The participants property
                    def participants()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Participants::ParticipantsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The regenerateMatches property
                    def regenerate_matches()
                        return TeamBattlesSdk::Generated::Tournaments::Item::RegenerateMatches::RegenerateMatchesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The registration property
                    def registration()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Registration::RegistrationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The rosterEntries property
                    def roster_entries()
                        return TeamBattlesSdk::Generated::Tournaments::Item::RosterEntries::RosterEntriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The rounds property
                    def rounds()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Rounds::RoundsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The staff property
                    def staff()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Staff::StaffRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The start property
                    def start()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Start::StartRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The submitForApproval property
                    def submit_for_approval()
                        return TeamBattlesSdk::Generated::Tournaments::Item::SubmitForApproval::SubmitForApprovalRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The teams property
                    def teams()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Teams::TeamsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The update property
                    def update()
                        return TeamBattlesSdk::Generated::Tournaments::Item::Update::UpdateRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}")
                    end
                    ## 
                    ## Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of tournament_profile_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentProfileResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a with_identifier_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WithIdentifierItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
