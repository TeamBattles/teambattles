require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../participants'
require_relative '../item'
require_relative './check_in'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Participants
                    module Item
                        module CheckIn
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#participants#{participantId}#check-in
                            class CheckInRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new CheckInRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in")
                                end
                                ## 
                                ## Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_write_ack
                                ## 
                                def post(request_configuration=nil)
                                    request_info = self.to_post_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a check_in_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return CheckInRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
