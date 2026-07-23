require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_applications_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './applications'
require_relative './item/with_participant_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Applications
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#applications
                    class ApplicationsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.applications.item collection
                        ## @param participant_id Tournament participant ID.
                        ## @return a with_participant_item_request_builder
                        ## 
                        def by_participant_id(participant_id)
                            raise StandardError, 'participant_id cannot be null' if participant_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["participantId"] = participant_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::Applications::Item::WithParticipantItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ApplicationsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/applications")
                        end
                        ## 
                        ## Returns the teams awaiting organizer review, resolved by slug. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. A caller without that standing answers 403; a tournament they cannot view at all answers 404. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_applications_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentApplicationsResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the teams awaiting organizer review, resolved by slug. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. A caller without that standing answers 403; a tournament they cannot view at all answers 404. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
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
                        ## @return a applications_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ApplicationsRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
