require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../participants'
require_relative '../item'
require_relative './withdraw'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Participants
                    module Item
                        module Withdraw
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#participants#{participantId}#withdraw
                            class WithdrawRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new WithdrawRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw")
                                end
                                ## 
                                ## Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
                                ## Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
                                ## @return a withdraw_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return WithdrawRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
