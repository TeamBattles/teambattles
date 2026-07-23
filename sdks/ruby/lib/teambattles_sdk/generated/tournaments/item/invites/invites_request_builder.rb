require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_invites_response'
require_relative '../../../models/tournament_invite_team_body'
require_relative '../../../models/tournament_write_ack'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './invites'
require_relative './item/with_invite_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Invites
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#invites
                    class InvitesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.invites.item collection
                        ## @param invite_id Tournament invite ID, as returned by GET /tournaments/{identifier}/me for a team you lead.
                        ## @return a with_invite_item_request_builder
                        ## 
                        def by_invite_id(invite_id)
                            raise StandardError, 'invite_id cannot be null' if invite_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["inviteId"] = invite_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::Invites::Item::WithInviteItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new InvitesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/invites")
                        end
                        ## 
                        ## Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_invites_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentInvitesResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
                        ## @param body Tournament team invitation payload.
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
                        ## Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
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
                        ## Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
                        ## @param body Tournament team invitation payload.
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
                        ## @return a invites_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return InvitesRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
