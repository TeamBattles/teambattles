require 'microsoft_kiota_abstractions'
require_relative '../../models/api_match_detail_response'
require_relative '../../models/error'
require_relative '../../team_battles_sdk::_generated'
require_relative '../matches'
require_relative './accept/accept_request_builder'
require_relative './attendance/attendance_request_builder'
require_relative './cancel/cancel_request_builder'
require_relative './chat/chat_request_builder'
require_relative './forfeit/forfeit_request_builder'
require_relative './item'
require_relative './lobby_code/lobby_code_request_builder'
require_relative './players/players_request_builder'
require_relative './ready/ready_request_builder'
require_relative './scores/scores_request_builder'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                ## 
                # Builds and executes requests for operations under #matches#{matchId}
                class WithMatchItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The accept property
                    def accept()
                        return TeamBattlesSdk::Generated::Matches::Item::Accept::AcceptRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The attendance property
                    def attendance()
                        return TeamBattlesSdk::Generated::Matches::Item::Attendance::AttendanceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The cancel property
                    def cancel()
                        return TeamBattlesSdk::Generated::Matches::Item::Cancel::CancelRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The chat property
                    def chat()
                        return TeamBattlesSdk::Generated::Matches::Item::Chat::ChatRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The forfeit property
                    def forfeit()
                        return TeamBattlesSdk::Generated::Matches::Item::Forfeit::ForfeitRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The lobbyCode property
                    def lobby_code()
                        return TeamBattlesSdk::Generated::Matches::Item::LobbyCode::LobbyCodeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The players property
                    def players()
                        return TeamBattlesSdk::Generated::Matches::Item::Players::PlayersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The ready property
                    def ready()
                        return TeamBattlesSdk::Generated::Matches::Item::Ready::ReadyRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The scores property
                    def scores()
                        return TeamBattlesSdk::Generated::Matches::Item::Scores::ScoresRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithMatchItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/matches/{matchId}")
                    end
                    ## 
                    ## Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of api_match_detail_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchDetailResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
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
                    ## @return a with_match_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WithMatchItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
