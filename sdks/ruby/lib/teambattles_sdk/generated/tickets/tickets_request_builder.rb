require 'microsoft_kiota_abstractions'
require_relative '../models/create_ticket_request_body'
require_relative '../models/create_ticket_response'
require_relative '../models/error'
require_relative '../team_battles_sdk::_generated'
require_relative './item/with_ticket_item_request_builder'
require_relative './tickets'

module TeamBattlesSdk
    module Generated
        module Tickets
            ## 
            # Builds and executes requests for operations under #tickets
            class TicketsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.tickets.item collection
                ## @param ticket_id Ticket ID.
                ## @return a with_ticket_item_request_builder
                ## 
                def by_ticket_id(ticket_id)
                    raise StandardError, 'ticket_id cannot be null' if ticket_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["ticketId"] = ticket_id
                    return TeamBattlesSdk::Generated::Tickets::Item::WithTicketItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new TicketsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "")
                end
                ## 
                ## Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of tickets_get_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Tickets::TicketsGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
                ## @param body Creates a self-filed support ticket owned by the API key owner.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of create_ticket_response
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
                    error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::CreateTicketResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :GET
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
                ## @param body Creates a self-filed support ticket owned by the API key owner.
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
                ## @return a tickets_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return TicketsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
                class TicketsRequestBuilderGetQueryParameters
                    
                    ## 
                    # Opaque continuation cursor from a prior page's nextCursor.
                    attr_accessor :cursor
                    ## 
                    # Page size (1-100). Defaults to 25.
                    attr_accessor :limit
                end
            end
        end
    end
end
