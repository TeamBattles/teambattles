require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_team_entry_body'
require_relative '../../../../../models/tournament_team_entry_response'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../teams'
require_relative '../item'
require_relative './enter'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Teams
                    module Item
                        module Enter
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#teams#{teamIdentifier}#enter
                            class EnterRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new EnterRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/enter")
                                end
                                ## 
                                ## Registers a team you lead directly into an OPEN-registration tournament and returns its participant ID. The entry is immediately APPROVED and consumes a participant slot, so the request is rejected with 409 error_tournament_full at capacity. Use the sibling apply endpoint for APPLICATION-mode tournaments - a mode mismatch answers 400 error_invalid_input rather than silently doing the other thing. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment, which is the only channel the leadership check covers. Requires the tournaments actor entry capability at read-write.
                                ## @param body Tournament entry payload for a team the caller leads.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_team_entry_response
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
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentTeamEntryResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Registers a team you lead directly into an OPEN-registration tournament and returns its participant ID. The entry is immediately APPROVED and consumes a participant slot, so the request is rejected with 409 error_tournament_full at capacity. Use the sibling apply endpoint for APPLICATION-mode tournaments - a mode mismatch answers 400 error_invalid_input rather than silently doing the other thing. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment, which is the only channel the leadership check covers. Requires the tournaments actor entry capability at read-write.
                                ## @param body Tournament entry payload for a team the caller leads.
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
                                ## @return a enter_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return EnterRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
