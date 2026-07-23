require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_submit_for_approval_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './submit_for_approval'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module SubmitForApproval
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#submit-for-approval
                    class SubmitForApprovalRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new SubmitForApprovalRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/submit-for-approval")
                        end
                        ## 
                        ## Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_submit_for_approval_response
                        ## 
                        def post(request_configuration=nil)
                            request_info = self.to_post_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentSubmitForApprovalResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_post_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a submit_for_approval_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return SubmitForApprovalRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
