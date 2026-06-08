require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../chat'
require_relative '../messages'
require_relative './item'
require_relative './report/report_request_builder'

module TeamBattlesSdk
    module Generated
        module Chat
            module Messages
                module Item
                    ## 
                    # Builds and executes requests for operations under #chat#messages#{messageId}
                    class WithMessageItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The report property
                        def report()
                            return TeamBattlesSdk::Generated::Chat::Messages::Item::Report::ReportRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new WithMessageItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/chat/messages/{messageId}")
                        end
                    end
                end
            end
        end
    end
end
