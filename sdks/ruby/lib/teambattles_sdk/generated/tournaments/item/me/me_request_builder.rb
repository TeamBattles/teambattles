require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/my_tournament_entry_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './me'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Me
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#me
                    class MeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new MeRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/me")
                        end
                        ## 
                        ## Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of my_tournament_entry_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentEntryResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
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
                        ## @return a me_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return MeRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
