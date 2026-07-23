require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_free_agents_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './free_agents'
require_relative './item/with_free_agent_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgents
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#free-agents
                    class FreeAgentsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.freeAgents.item collection
                        ## @param free_agent_id Free-agent pool entry ID, as returned by GET /tournaments/{identifier}/free-agents.
                        ## @return a with_free_agent_item_request_builder
                        ## 
                        def by_free_agent_id(free_agent_id)
                            raise StandardError, 'free_agent_id cannot be null' if free_agent_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["freeAgentId"] = free_agent_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgents::Item::WithFreeAgentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new FreeAgentsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents{?viewerParticipantId*}")
                        end
                        ## 
                        ## Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_free_agents_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFreeAgentsResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
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
                        ## @return a free_agents_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return FreeAgentsRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
                        class FreeAgentsRequestBuilderGetQueryParameters
                            
                            ## 
                            # Participant ID whose open offers should be reflected in `viewerOfferStatus`. The caller must lead that participant's team and the participant must belong to this tournament, otherwise the field is null for every agent.
                            attr_accessor :viewer_participant_id
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param original_name The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
                                    when "viewer_participant_id"
                                        return "viewerParticipantId"
                                    else
                                        return original_name
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
