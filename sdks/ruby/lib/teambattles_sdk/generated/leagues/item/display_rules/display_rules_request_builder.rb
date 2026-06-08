require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/league_display_rules'
require_relative '../../../models/league_display_rules_request_body'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './display_rules'
require_relative './item/with_display_rule_item_request_builder'
require_relative './reorder/reorder_request_builder'
require_relative './upsert/upsert_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module DisplayRules
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#display-rules
                    class DisplayRulesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The reorder property
                        def reorder()
                            return TeamBattlesSdk::Generated::Leagues::Item::DisplayRules::Reorder::ReorderRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The upsert property
                        def upsert()
                            return TeamBattlesSdk::Generated::Leagues::Item::DisplayRules::Upsert::UpsertRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.displayRules.item collection
                        ## @param display_rule_id Display rule ID.
                        ## @return a with_display_rule_item_request_builder
                        ## 
                        def by_display_rule_id(display_rule_id)
                            raise StandardError, 'display_rule_id cannot be null' if display_rule_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["displayRuleId"] = display_rule_id
                            return TeamBattlesSdk::Generated::Leagues::Item::DisplayRules::Item::WithDisplayRuleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DisplayRulesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/display-rules")
                        end
                        ## 
                        ## Returns display rules configured for a league game. Requires leagues.league_public:read.
                        ## @param body Display rule selector.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of league_display_rules
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueDisplayRules.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns display rules configured for a league game. Requires leagues.league_public:read.
                        ## @param body Display rule selector.
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
                        ## @return a display_rules_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return DisplayRulesRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
