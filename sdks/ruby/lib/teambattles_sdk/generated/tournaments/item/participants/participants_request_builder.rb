require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_participants_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './item/with_participant_item_request_builder'
require_relative './participants'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Participants
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#participants
                    class ParticipantsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.participants.item collection
                        ## @param participant_id Tournament participant ID.
                        ## @return a with_participant_item_request_builder
                        ## 
                        def by_participant_id(participant_id)
                            raise StandardError, 'participant_id cannot be null' if participant_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["participantId"] = participant_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::Participants::Item::WithParticipantItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ParticipantsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/participants")
                        end
                        ## 
                        ## Returns every participating team with its tournament roster, resolved by slug. Includes pending, approved, withdrawn, and disqualified entries - filter on `status` for the active field. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_participants_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentParticipantsResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns every participating team with its tournament roster, resolved by slug. Includes pending, approved, withdrawn, and disqualified entries - filter on `status` for the active field. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
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
                        ## @return a participants_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ParticipantsRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
