require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../team_battles_sdk::_generated'
require_relative '../users'
require_relative './connections/connections_request_builder'
require_relative './item'
require_relative './organizations/organizations_request_builder'
require_relative './stats/stats_request_builder'
require_relative './teams/teams_request_builder'
require_relative './trophies/trophies_request_builder'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                ##
                # Builds and executes requests for operations under #users#{identifier}
                class WithIdentifierItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                    ##
                    # The connections property
                    def connections()
                        return TeamBattlesSdk::Generated::Users::Item::Connections::ConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    # The organizations property
                    def organizations()
                        return TeamBattlesSdk::Generated::Users::Item::Organizations::OrganizationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    # The stats property
                    def stats()
                        return TeamBattlesSdk::Generated::Users::Item::Stats::StatsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    # The teams property
                    def teams()
                        return TeamBattlesSdk::Generated::Users::Item::Teams::TeamsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    # The trophies property
                    def trophies()
                        return TeamBattlesSdk::Generated::Users::Item::Trophies::TrophiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    ## Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ##
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{identifier}")
                    end
                    ##
                    ## Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of with_identifier_get_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Users::Item::WithIdentifierGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ##
                    ## Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
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
                    ## @return a with_identifier_item_request_builder
                    ##
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WithIdentifierItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
