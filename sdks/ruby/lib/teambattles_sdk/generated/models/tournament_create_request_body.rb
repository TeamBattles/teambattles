require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
            class TournamentCreateRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
                @banner_storage_id
                ## 
                # The checkInOpensMinutesBefore property
                @check_in_opens_minutes_before
                ## 
                # The checkInRequired property
                @check_in_required
                ## 
                # Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
                @default_match_config
                ## 
                # The description property
                @description
                ## 
                # Unix ms.
                @ends_at
                ## 
                # Bracket format of a tournament.
                @format
                ## 
                # Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
                @format_config
                ## 
                # Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
                @free_agents_enabled
                ## 
                # Convex game id.
                @game_id
                ## 
                # Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
                @host_id
                ## 
                # Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
                @host_type
                ## 
                # LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
                @league_points_by_placement
                ## 
                # LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
                @league_points_enabled
                ## 
                # Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
                @logo_storage_id
                ## 
                # Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
                @max_participants
                ## 
                # The minParticipants property
                @min_participants
                ## 
                # Tournament name, 3-80 characters after trimming.
                @name
                ## 
                # Convex game playlist id.
                @playlist_id
                ## 
                # The prizeBreakdown property
                @prize_breakdown
                ## 
                # The prizeCurrency property
                @prize_currency
                ## 
                # The prizeDescription property
                @prize_description
                ## 
                # The prizePool property
                @prize_pool
                ## 
                # Unix ms.
                @registration_ends_at
                ## 
                # The registrationMode property
                @registration_mode
                ## 
                # Unix ms.
                @registration_starts_at
                ## 
                # The rules property
                @rules
                ## 
                # Defaults to the platform default when omitted. NOT editable afterwards.
                @seeding_method
                ## 
                # Organizer social links.
                @social_links
                ## 
                # Bounded by the host plan's sponsor-tag limit.
                @sponsor_tags
                ## 
                # Unix ms.
                @starts_at
                ## 
                # Players per side.
                @team_size
                ## 
                # The visibility property
                @visibility
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the bannerStorageId property value. Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
                ## @return a string
                ## 
                def banner_storage_id
                    return @banner_storage_id
                end
                ## 
                ## Sets the bannerStorageId property value. Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
                ## @param value Value to set for the bannerStorageId property.
                ## @return a void
                ## 
                def banner_storage_id=(value)
                    @banner_storage_id = value
                end
                ## 
                ## Gets the checkInOpensMinutesBefore property value. The checkInOpensMinutesBefore property
                ## @return a integer
                ## 
                def check_in_opens_minutes_before
                    return @check_in_opens_minutes_before
                end
                ## 
                ## Sets the checkInOpensMinutesBefore property value. The checkInOpensMinutesBefore property
                ## @param value Value to set for the checkInOpensMinutesBefore property.
                ## @return a void
                ## 
                def check_in_opens_minutes_before=(value)
                    @check_in_opens_minutes_before = value
                end
                ## 
                ## Gets the checkInRequired property value. The checkInRequired property
                ## @return a boolean
                ## 
                def check_in_required
                    return @check_in_required
                end
                ## 
                ## Sets the checkInRequired property value. The checkInRequired property
                ## @param value Value to set for the checkInRequired property.
                ## @return a void
                ## 
                def check_in_required=(value)
                    @check_in_required = value
                end
                ## 
                ## Instantiates a new TournamentCreateRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_create_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentCreateRequestBody.new
                end
                ## 
                ## Gets the defaultMatchConfig property value. Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
                ## @return a tournament_default_match_config
                ## 
                def default_match_config
                    return @default_match_config
                end
                ## 
                ## Sets the defaultMatchConfig property value. Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
                ## @param value Value to set for the defaultMatchConfig property.
                ## @return a void
                ## 
                def default_match_config=(value)
                    @default_match_config = value
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the endsAt property value. Unix ms.
                ## @return a integer
                ## 
                def ends_at
                    return @ends_at
                end
                ## 
                ## Sets the endsAt property value. Unix ms.
                ## @param value Value to set for the endsAt property.
                ## @return a void
                ## 
                def ends_at=(value)
                    @ends_at = value
                end
                ## 
                ## Gets the format property value. Bracket format of a tournament.
                ## @return a tournament_format
                ## 
                def format
                    return @format
                end
                ## 
                ## Sets the format property value. Bracket format of a tournament.
                ## @param value Value to set for the format property.
                ## @return a void
                ## 
                def format=(value)
                    @format = value
                end
                ## 
                ## Gets the formatConfig property value. Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
                ## @return a tournament_format_config
                ## 
                def format_config
                    return @format_config
                end
                ## 
                ## Sets the formatConfig property value. Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
                ## @param value Value to set for the formatConfig property.
                ## @return a void
                ## 
                def format_config=(value)
                    @format_config = value
                end
                ## 
                ## Gets the freeAgentsEnabled property value. Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
                ## @return a boolean
                ## 
                def free_agents_enabled
                    return @free_agents_enabled
                end
                ## 
                ## Sets the freeAgentsEnabled property value. Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
                ## @param value Value to set for the freeAgentsEnabled property.
                ## @return a void
                ## 
                def free_agents_enabled=(value)
                    @free_agents_enabled = value
                end
                ## 
                ## Gets the gameId property value. Convex game id.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Convex game id.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "bannerStorageId" => lambda {|n| @banner_storage_id = n.get_string_value() },
                        "checkInOpensMinutesBefore" => lambda {|n| @check_in_opens_minutes_before = n.get_number_value() },
                        "checkInRequired" => lambda {|n| @check_in_required = n.get_boolean_value() },
                        "defaultMatchConfig" => lambda {|n| @default_match_config = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentDefaultMatchConfig.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "endsAt" => lambda {|n| @ends_at = n.get_number_value() },
                        "format" => lambda {|n| @format = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFormat) },
                        "formatConfig" => lambda {|n| @format_config = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFormatConfig.create_from_discriminator_value(pn) }) },
                        "freeAgentsEnabled" => lambda {|n| @free_agents_enabled = n.get_boolean_value() },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "hostId" => lambda {|n| @host_id = n.get_string_value() },
                        "hostType" => lambda {|n| @host_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentCreateRequestBodyHostType) },
                        "leaguePointsByPlacement" => lambda {|n| @league_points_by_placement = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentPlacementPointsEntry.create_from_discriminator_value(pn) }) },
                        "leaguePointsEnabled" => lambda {|n| @league_points_enabled = n.get_boolean_value() },
                        "logoStorageId" => lambda {|n| @logo_storage_id = n.get_string_value() },
                        "maxParticipants" => lambda {|n| @max_participants = n.get_number_value() },
                        "minParticipants" => lambda {|n| @min_participants = n.get_number_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "playlistId" => lambda {|n| @playlist_id = n.get_string_value() },
                        "prizeBreakdown" => lambda {|n| @prize_breakdown = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentPrizeBreakdownEntry.create_from_discriminator_value(pn) }) },
                        "prizeCurrency" => lambda {|n| @prize_currency = n.get_string_value() },
                        "prizeDescription" => lambda {|n| @prize_description = n.get_string_value() },
                        "prizePool" => lambda {|n| @prize_pool = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "registrationEndsAt" => lambda {|n| @registration_ends_at = n.get_number_value() },
                        "registrationMode" => lambda {|n| @registration_mode = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentCreateRequestBodyRegistrationMode) },
                        "registrationStartsAt" => lambda {|n| @registration_starts_at = n.get_number_value() },
                        "rules" => lambda {|n| @rules = n.get_string_value() },
                        "seedingMethod" => lambda {|n| @seeding_method = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentCreateRequestBodySeedingMethod) },
                        "socialLinks" => lambda {|n| @social_links = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentSocialLinks.create_from_discriminator_value(pn) }) },
                        "sponsorTags" => lambda {|n| @sponsor_tags = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentSponsorTag.create_from_discriminator_value(pn) }) },
                        "startsAt" => lambda {|n| @starts_at = n.get_number_value() },
                        "teamSize" => lambda {|n| @team_size = n.get_number_value() },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentCreateRequestBodyVisibility) },
                    }
                end
                ## 
                ## Gets the hostId property value. Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
                ## @return a string
                ## 
                def host_id
                    return @host_id
                end
                ## 
                ## Sets the hostId property value. Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
                ## @param value Value to set for the hostId property.
                ## @return a void
                ## 
                def host_id=(value)
                    @host_id = value
                end
                ## 
                ## Gets the hostType property value. Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
                ## @return a tournament_create_request_body_host_type
                ## 
                def host_type
                    return @host_type
                end
                ## 
                ## Sets the hostType property value. Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
                ## @param value Value to set for the hostType property.
                ## @return a void
                ## 
                def host_type=(value)
                    @host_type = value
                end
                ## 
                ## Gets the leaguePointsByPlacement property value. LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
                ## @return a tournament_placement_points_entry
                ## 
                def league_points_by_placement
                    return @league_points_by_placement
                end
                ## 
                ## Sets the leaguePointsByPlacement property value. LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
                ## @param value Value to set for the leaguePointsByPlacement property.
                ## @return a void
                ## 
                def league_points_by_placement=(value)
                    @league_points_by_placement = value
                end
                ## 
                ## Gets the leaguePointsEnabled property value. LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
                ## @return a boolean
                ## 
                def league_points_enabled
                    return @league_points_enabled
                end
                ## 
                ## Sets the leaguePointsEnabled property value. LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
                ## @param value Value to set for the leaguePointsEnabled property.
                ## @return a void
                ## 
                def league_points_enabled=(value)
                    @league_points_enabled = value
                end
                ## 
                ## Gets the logoStorageId property value. Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
                ## @return a string
                ## 
                def logo_storage_id
                    return @logo_storage_id
                end
                ## 
                ## Sets the logoStorageId property value. Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
                ## @param value Value to set for the logoStorageId property.
                ## @return a void
                ## 
                def logo_storage_id=(value)
                    @logo_storage_id = value
                end
                ## 
                ## Gets the maxParticipants property value. Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
                ## @return a integer
                ## 
                def max_participants
                    return @max_participants
                end
                ## 
                ## Sets the maxParticipants property value. Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
                ## @param value Value to set for the maxParticipants property.
                ## @return a void
                ## 
                def max_participants=(value)
                    @max_participants = value
                end
                ## 
                ## Gets the minParticipants property value. The minParticipants property
                ## @return a integer
                ## 
                def min_participants
                    return @min_participants
                end
                ## 
                ## Sets the minParticipants property value. The minParticipants property
                ## @param value Value to set for the minParticipants property.
                ## @return a void
                ## 
                def min_participants=(value)
                    @min_participants = value
                end
                ## 
                ## Gets the name property value. Tournament name, 3-80 characters after trimming.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Tournament name, 3-80 characters after trimming.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the playlistId property value. Convex game playlist id.
                ## @return a string
                ## 
                def playlist_id
                    return @playlist_id
                end
                ## 
                ## Sets the playlistId property value. Convex game playlist id.
                ## @param value Value to set for the playlistId property.
                ## @return a void
                ## 
                def playlist_id=(value)
                    @playlist_id = value
                end
                ## 
                ## Gets the prizeBreakdown property value. The prizeBreakdown property
                ## @return a tournament_prize_breakdown_entry
                ## 
                def prize_breakdown
                    return @prize_breakdown
                end
                ## 
                ## Sets the prizeBreakdown property value. The prizeBreakdown property
                ## @param value Value to set for the prizeBreakdown property.
                ## @return a void
                ## 
                def prize_breakdown=(value)
                    @prize_breakdown = value
                end
                ## 
                ## Gets the prizeCurrency property value. The prizeCurrency property
                ## @return a string
                ## 
                def prize_currency
                    return @prize_currency
                end
                ## 
                ## Sets the prizeCurrency property value. The prizeCurrency property
                ## @param value Value to set for the prizeCurrency property.
                ## @return a void
                ## 
                def prize_currency=(value)
                    @prize_currency = value
                end
                ## 
                ## Gets the prizeDescription property value. The prizeDescription property
                ## @return a string
                ## 
                def prize_description
                    return @prize_description
                end
                ## 
                ## Sets the prizeDescription property value. The prizeDescription property
                ## @param value Value to set for the prizeDescription property.
                ## @return a void
                ## 
                def prize_description=(value)
                    @prize_description = value
                end
                ## 
                ## Gets the prizePool property value. The prizePool property
                ## @return a double
                ## 
                def prize_pool
                    return @prize_pool
                end
                ## 
                ## Sets the prizePool property value. The prizePool property
                ## @param value Value to set for the prizePool property.
                ## @return a void
                ## 
                def prize_pool=(value)
                    @prize_pool = value
                end
                ## 
                ## Gets the registrationEndsAt property value. Unix ms.
                ## @return a integer
                ## 
                def registration_ends_at
                    return @registration_ends_at
                end
                ## 
                ## Sets the registrationEndsAt property value. Unix ms.
                ## @param value Value to set for the registrationEndsAt property.
                ## @return a void
                ## 
                def registration_ends_at=(value)
                    @registration_ends_at = value
                end
                ## 
                ## Gets the registrationMode property value. The registrationMode property
                ## @return a tournament_create_request_body_registration_mode
                ## 
                def registration_mode
                    return @registration_mode
                end
                ## 
                ## Sets the registrationMode property value. The registrationMode property
                ## @param value Value to set for the registrationMode property.
                ## @return a void
                ## 
                def registration_mode=(value)
                    @registration_mode = value
                end
                ## 
                ## Gets the registrationStartsAt property value. Unix ms.
                ## @return a integer
                ## 
                def registration_starts_at
                    return @registration_starts_at
                end
                ## 
                ## Sets the registrationStartsAt property value. Unix ms.
                ## @param value Value to set for the registrationStartsAt property.
                ## @return a void
                ## 
                def registration_starts_at=(value)
                    @registration_starts_at = value
                end
                ## 
                ## Gets the rules property value. The rules property
                ## @return a string
                ## 
                def rules
                    return @rules
                end
                ## 
                ## Sets the rules property value. The rules property
                ## @param value Value to set for the rules property.
                ## @return a void
                ## 
                def rules=(value)
                    @rules = value
                end
                ## 
                ## Gets the seedingMethod property value. Defaults to the platform default when omitted. NOT editable afterwards.
                ## @return a tournament_create_request_body_seeding_method
                ## 
                def seeding_method
                    return @seeding_method
                end
                ## 
                ## Sets the seedingMethod property value. Defaults to the platform default when omitted. NOT editable afterwards.
                ## @param value Value to set for the seedingMethod property.
                ## @return a void
                ## 
                def seeding_method=(value)
                    @seeding_method = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("bannerStorageId", @banner_storage_id)
                    writer.write_number_value("checkInOpensMinutesBefore", @check_in_opens_minutes_before)
                    writer.write_boolean_value("checkInRequired", @check_in_required)
                    writer.write_object_value("defaultMatchConfig", @default_match_config)
                    writer.write_string_value("description", @description)
                    writer.write_number_value("endsAt", @ends_at)
                    writer.write_enum_value("format", @format)
                    writer.write_object_value("formatConfig", @format_config)
                    writer.write_boolean_value("freeAgentsEnabled", @free_agents_enabled)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("hostId", @host_id)
                    writer.write_enum_value("hostType", @host_type)
                    writer.write_collection_of_object_values("leaguePointsByPlacement", @league_points_by_placement)
                    writer.write_boolean_value("leaguePointsEnabled", @league_points_enabled)
                    writer.write_string_value("logoStorageId", @logo_storage_id)
                    writer.write_number_value("maxParticipants", @max_participants)
                    writer.write_number_value("minParticipants", @min_participants)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("playlistId", @playlist_id)
                    writer.write_collection_of_object_values("prizeBreakdown", @prize_breakdown)
                    writer.write_string_value("prizeCurrency", @prize_currency)
                    writer.write_string_value("prizeDescription", @prize_description)
                    writer.write_object_value("prizePool", @prize_pool)
                    writer.write_number_value("registrationEndsAt", @registration_ends_at)
                    writer.write_enum_value("registrationMode", @registration_mode)
                    writer.write_number_value("registrationStartsAt", @registration_starts_at)
                    writer.write_string_value("rules", @rules)
                    writer.write_enum_value("seedingMethod", @seeding_method)
                    writer.write_object_value("socialLinks", @social_links)
                    writer.write_collection_of_object_values("sponsorTags", @sponsor_tags)
                    writer.write_number_value("startsAt", @starts_at)
                    writer.write_number_value("teamSize", @team_size)
                    writer.write_enum_value("visibility", @visibility)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the socialLinks property value. Organizer social links.
                ## @return a tournament_social_links
                ## 
                def social_links
                    return @social_links
                end
                ## 
                ## Sets the socialLinks property value. Organizer social links.
                ## @param value Value to set for the socialLinks property.
                ## @return a void
                ## 
                def social_links=(value)
                    @social_links = value
                end
                ## 
                ## Gets the sponsorTags property value. Bounded by the host plan's sponsor-tag limit.
                ## @return a tournament_sponsor_tag
                ## 
                def sponsor_tags
                    return @sponsor_tags
                end
                ## 
                ## Sets the sponsorTags property value. Bounded by the host plan's sponsor-tag limit.
                ## @param value Value to set for the sponsorTags property.
                ## @return a void
                ## 
                def sponsor_tags=(value)
                    @sponsor_tags = value
                end
                ## 
                ## Gets the startsAt property value. Unix ms.
                ## @return a integer
                ## 
                def starts_at
                    return @starts_at
                end
                ## 
                ## Sets the startsAt property value. Unix ms.
                ## @param value Value to set for the startsAt property.
                ## @return a void
                ## 
                def starts_at=(value)
                    @starts_at = value
                end
                ## 
                ## Gets the teamSize property value. Players per side.
                ## @return a integer
                ## 
                def team_size
                    return @team_size
                end
                ## 
                ## Sets the teamSize property value. Players per side.
                ## @param value Value to set for the teamSize property.
                ## @return a void
                ## 
                def team_size=(value)
                    @team_size = value
                end
                ## 
                ## Gets the visibility property value. The visibility property
                ## @return a tournament_create_request_body_visibility
                ## 
                def visibility
                    return @visibility
                end
                ## 
                ## Sets the visibility property value. The visibility property
                ## @param value Value to set for the visibility property.
                ## @return a void
                ## 
                def visibility=(value)
                    @visibility = value
                end
            end
        end
    end
end
