require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './discover/discover_request_builder'
require_relative './item/with_identifier_item_request_builder'
require_relative './orgs'

module TeamBattlesSdk
    module Generated
        module Orgs
            ## 
            # Builds and executes requests for operations under #orgs
            class OrgsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The discover property
                def discover()
                    return TeamBattlesSdk::Generated::Orgs::Discover::DiscoverRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.orgs.item collection
                ## @param identifier Organization slug or Convex organization ID.
                ## @return a with_identifier_item_request_builder
                ## 
                def by_identifier(identifier)
                    raise StandardError, 'identifier cannot be null' if identifier.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["identifier"] = identifier
                    return TeamBattlesSdk::Generated::Orgs::Item::WithIdentifierItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new OrgsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/orgs")
                end
            end
        end
    end
end
