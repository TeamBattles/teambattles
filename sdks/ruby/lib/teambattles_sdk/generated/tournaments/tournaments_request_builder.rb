require 'microsoft_kiota_abstractions'
require_relative '../models/error'
require_relative '../models/tournament_create_request_body'
require_relative '../models/tournament_create_response'
require_relative '../team_battles_sdk::_generated'
require_relative './discover/discover_request_builder'
require_relative './item/with_identifier_item_request_builder'
require_relative './tournaments'

module TeamBattlesSdk
    module Generated
        module Tournaments
            ## 
            # Builds and executes requests for operations under #tournaments
            class TournamentsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The discover property
                def discover()
                    return TeamBattlesSdk::Generated::Tournaments::Discover::DiscoverRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item collection
                ## @param identifier Tournament slug.
                ## @return a with_identifier_item_request_builder
                ## 
                def by_identifier(identifier)
                    raise StandardError, 'identifier cannot be null' if identifier.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["identifier"] = identifier
                    return TeamBattlesSdk::Generated::Tournaments::Item::WithIdentifierItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new TournamentsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/tournaments")
                end
                ## 
                ## Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person's developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
                ## @param body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of tournament_create_response
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
                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentCreateResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person's developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
                ## @param body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
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
                ## @return a tournaments_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return TournamentsRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
