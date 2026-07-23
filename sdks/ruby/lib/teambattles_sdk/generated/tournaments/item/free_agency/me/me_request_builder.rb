require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/tournament_free_agency_join_body'
require_relative '../../../../models/tournament_write_ack'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../free_agency'
require_relative './me'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgency
                    module Me
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#free-agency#me
                        class MeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new MeRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/me")
                            end
                            ## 
                            ## Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of tournament_write_ack
                            ## 
                            def delete(request_configuration=nil)
                                request_info = self.to_delete_request_information(
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
                            ## Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
                            ## @param body Free-agent pool listing payload for the API key owner.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of tournament_write_ack
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
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_delete_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :DELETE
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
                            ## @param body Free-agent pool listing payload for the API key owner.
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
                            ## @return a me_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return MeRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end
