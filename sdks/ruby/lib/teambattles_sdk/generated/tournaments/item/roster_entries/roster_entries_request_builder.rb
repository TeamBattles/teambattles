require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './item/with_roster_entry_item_request_builder'
require_relative './roster_entries'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module RosterEntries
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#roster-entries
                    class RosterEntriesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.rosterEntries.item collection
                        ## @param roster_entry_id Tournament roster entry ID.
                        ## @return a with_roster_entry_item_request_builder
                        ## 
                        def by_roster_entry_id(roster_entry_id)
                            raise StandardError, 'roster_entry_id cannot be null' if roster_entry_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["rosterEntryId"] = roster_entry_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::RosterEntries::Item::WithRosterEntryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new RosterEntriesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/roster-entries")
                        end
                    end
                end
            end
        end
    end
end
