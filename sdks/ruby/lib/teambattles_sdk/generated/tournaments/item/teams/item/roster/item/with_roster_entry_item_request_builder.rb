require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/error'
require_relative '../../../../../../models/tournament_write_ack'
require_relative '../../../../../../team_battles_sdk::_generated'
require_relative '../../../../../tournaments'
require_relative '../../../../item'
require_relative '../../../teams'
require_relative '../../item'
require_relative '../roster'
require_relative './item'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Teams
                    module Item
                        module Roster
                            module Item
                                ## 
                                # Builds and executes requests for operations under #tournaments#{identifier}#teams#{teamIdentifier}#roster#{rosterEntryId}
                                class WithRosterEntryItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    ## Instantiates a new WithRosterEntryItemRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster/{rosterEntryId}")
                                    end
                                    ## 
                                    ## Removes a roster entry from a team you lead. The entry must belong to BOTH the tournament and the team in the path; an entry from another tournament or another team answers 404 error_tournament_not_found, identically to one that does not exist, so this endpoint is not a cross-team existence oracle. Roster entry IDs come from GET /tournaments/{identifier}/me for your own entry, or from the participants endpoint for the rest of your team. Removing an entry sourced from the free-agent pool releases that player back to the pool as AVAILABLE - the step that must precede removing a picked-up agent from the pool. Requires the tournaments actor roster capability.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of tournament_write_ack
                                    ## 
                                    def delete(request_configuration=nil)
                                        request_info = self.to_delete_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Removes a roster entry from a team you lead. The entry must belong to BOTH the tournament and the team in the path; an entry from another tournament or another team answers 404 error_tournament_not_found, identically to one that does not exist, so this endpoint is not a cross-team existence oracle. Roster entry IDs come from GET /tournaments/{identifier}/me for your own entry, or from the participants endpoint for the rest of your team. Removing an entry sourced from the free-agent pool releases that player back to the pool as AVAILABLE - the step that must precede removing a picked-up agent from the pool. Requires the tournaments actor roster capability.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a request_information
                                    ## 
                                    def to_delete_request_information(request_configuration=nil)
                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                        unless request_configuration.nil?
                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                            request_info.add_request_options(request_configuration.options)
                                        end
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :DELETE
                                        request_info.headers.try_add('Accept', 'application/json')
                                        return request_info
                                    end
                                    ## 
                                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                    ## @param raw_url The raw URL to use for the request builder.
                                    ## @return a with_roster_entry_item_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return WithRosterEntryItemRequestBuilder.new(raw_url, @request_adapter)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
