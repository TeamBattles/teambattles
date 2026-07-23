require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_invite_respond_body'
require_relative '../../../../../models/tournament_invite_respond_response'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../invites'
require_relative '../item'
require_relative './respond'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Invites
                    module Item
                        module Respond
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#invites#{inviteId}#respond
                            class RespondRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new RespondRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond")
                                end
                                ## 
                                ## Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
                                ## @param body Captain response to a tournament invite.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_invite_respond_response
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
                                    error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentInviteRespondResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
                                ## @param body Captain response to a tournament invite.
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
                                ## @return a respond_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return RespondRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
