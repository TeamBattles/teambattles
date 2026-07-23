require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_team_roster_add_body'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../teams'
require_relative '../item'
require_relative './item/with_roster_entry_item_request_builder'
require_relative './roster'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Teams
                    module Item
                        module Roster
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#teams#{teamIdentifier}#roster
                            class RosterRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.teams.item.roster.item collection
                                ## @param roster_entry_id Tournament roster entry ID.
                                ## @return a with_roster_entry_item_request_builder
                                ## 
                                def by_roster_entry_id(roster_entry_id)
                                    raise StandardError, 'roster_entry_id cannot be null' if roster_entry_id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["rosterEntryId"] = roster_entry_id
                                    return TeamBattlesSdk::Generated::Tournaments::Item::Teams::Item::Roster::Item::WithRosterEntryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new RosterRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster")
                                end
                                ## 
                                ## Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
                                ## @param body Competitor roster addition payload.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_write_ack
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
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
                                ## @param body Competitor roster addition payload.
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
                                ## @return a roster_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return RosterRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
