require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './item/with_identifier_item_request_builder'
require_relative './teams'

module TeamBattlesSdk
    module Generated
        module Teams
            ## 
            # Builds and executes requests for operations under #teams
            class TeamsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.teams.item collection
                ## @param identifier Team id or slug.
                ## @return a with_identifier_item_request_builder
                ## 
                def by_identifier(identifier)
                    raise StandardError, 'identifier cannot be null' if identifier.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["identifier"] = identifier
                    return TeamBattlesSdk::Generated::Teams::Item::WithIdentifierItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new TeamsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/teams")
                end
            end
        end
    end
end
