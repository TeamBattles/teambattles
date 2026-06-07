require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../games'
require_relative './item'
require_relative './playlists/playlists_request_builder'

module TeamBattlesSdk
    module Generated
        module Games
            module Item
                ##
                # Builds and executes requests for operations under #games#{id}
                class GamesItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                    ##
                    # The playlists property
                    def playlists()
                        return TeamBattlesSdk::Generated::Games::Item::Playlists::PlaylistsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    ## Instantiates a new GamesItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ##
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/games/{id}")
                    end
                end
            end
        end
    end
end
