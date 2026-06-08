require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './item/with_slug_item_request_builder'
require_relative './strategies'

module TeamBattlesSdk
    module Generated
        module Strategies
            ## 
            # Builds and executes requests for operations under #strategies
            class StrategiesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.strategies.item collection
                ## @param slug Strategy public share slug.
                ## @return a with_slug_item_request_builder
                ## 
                def by_slug(slug)
                    raise StandardError, 'slug cannot be null' if slug.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["slug"] = slug
                    return TeamBattlesSdk::Generated::Strategies::Item::WithSlugItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new StrategiesRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/strategies")
                end
            end
        end
    end
end
