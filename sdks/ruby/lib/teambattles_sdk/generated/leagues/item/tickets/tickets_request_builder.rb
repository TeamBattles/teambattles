require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './create/create_request_builder'
require_relative './item/with_ticket_item_request_builder'
require_relative './tickets'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Tickets
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#tickets
                    class TicketsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The create property
                        def create()
                            return TeamBattlesSdk::Generated::Leagues::Item::Tickets::Create::CreateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.tickets.item collection
                        ## @param ticket_id League ticket ID.
                        ## @return a with_ticket_item_request_builder
                        ## 
                        def by_ticket_id(ticket_id)
                            raise StandardError, 'ticket_id cannot be null' if ticket_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["ticketId"] = ticket_id
                            return TeamBattlesSdk::Generated::Leagues::Item::Tickets::Item::WithTicketItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new TicketsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/tickets")
                        end
                    end
                end
            end
        end
    end
end
