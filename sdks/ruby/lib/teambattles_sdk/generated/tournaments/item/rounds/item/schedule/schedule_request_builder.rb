require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_round_schedule_request_body'
require_relative '../../../../../models/tournament_round_schedule_response'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../rounds'
require_relative '../item'
require_relative './schedule'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Rounds
                    module Item
                        module Schedule
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#rounds#{roundId}#schedule
                            class ScheduleRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new ScheduleRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}/schedule")
                                end
                                ## 
                                ## Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
                                ## @param body Round schedule payload.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_round_schedule_response
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentRoundScheduleResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
                                ## @param body Round schedule payload.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a schedule_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return ScheduleRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
