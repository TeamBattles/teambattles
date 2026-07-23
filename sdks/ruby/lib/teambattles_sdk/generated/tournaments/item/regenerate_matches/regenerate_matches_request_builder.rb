require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_regenerate_matches_request_body'
require_relative '../../../models/tournament_regenerate_matches_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './regenerate_matches'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module RegenerateMatches
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#regenerate-matches
                    class RegenerateMatchesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new RegenerateMatchesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/regenerate-matches")
                        end
                        ## 
                        ## Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
                        ## @param body Confirmation payload for the match-regeneration repair lever.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_regenerate_matches_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentRegenerateMatchesResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
                        ## @param body Confirmation payload for the match-regeneration repair lever.
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
                        ## @return a regenerate_matches_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return RegenerateMatchesRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
