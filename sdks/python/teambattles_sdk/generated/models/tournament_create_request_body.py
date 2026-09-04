from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_create_request_body_host_type import TournamentCreateRequestBody_hostType
    from .tournament_create_request_body_registration_mode import TournamentCreateRequestBody_registrationMode
    from .tournament_create_request_body_seeding_method import TournamentCreateRequestBody_seedingMethod
    from .tournament_create_request_body_visibility import TournamentCreateRequestBody_visibility
    from .tournament_default_match_config import TournamentDefaultMatchConfig
    from .tournament_format import TournamentFormat
    from .tournament_format_config import TournamentFormatConfig
    from .tournament_placement_points_entry import TournamentPlacementPointsEntry
    from .tournament_prize_breakdown_entry import TournamentPrizeBreakdownEntry
    from .tournament_social_links import TournamentSocialLinks
    from .tournament_sponsor_tag import TournamentSponsorTag

@dataclass
class TournamentCreateRequestBody(AdditionalDataHolder, Parsable):
    """
    A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    banner_storage_id: Optional[str] = None
    # The checkInOpensMinutesBefore property
    check_in_opens_minutes_before: Optional[int] = None
    # The checkInRequired property
    check_in_required: Optional[bool] = None
    # Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
    default_match_config: Optional[TournamentDefaultMatchConfig] = None
    # The description property
    description: Optional[str] = None
    # Unix ms.
    ends_at: Optional[int] = None
    # Bracket format of a tournament.
    format: Optional[TournamentFormat] = None
    # Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
    format_config: Optional[TournamentFormatConfig] = None
    # Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
    free_agents_enabled: Optional[bool] = None
    # Convex game id.
    game_id: Optional[str] = None
    # Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
    host_id: Optional[str] = None
    # Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
    host_type: Optional[TournamentCreateRequestBody_hostType] = None
    # LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
    league_points_by_placement: Optional[list[TournamentPlacementPointsEntry]] = None
    # LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
    league_points_enabled: Optional[bool] = None
    # Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    logo_storage_id: Optional[str] = None
    # Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
    max_participants: Optional[int] = None
    # The minParticipants property
    min_participants: Optional[int] = None
    # Tournament name, 3-80 characters after trimming.
    name: Optional[str] = None
    # Convex game playlist id.
    playlist_id: Optional[str] = None
    # The prizeBreakdown property
    prize_breakdown: Optional[list[TournamentPrizeBreakdownEntry]] = None
    # The prizeCurrency property
    prize_currency: Optional[str] = None
    # The prizeDescription property
    prize_description: Optional[str] = None
    # The prizePool property
    prize_pool: Optional[float] = None
    # Unix ms.
    registration_ends_at: Optional[int] = None
    # The registrationMode property
    registration_mode: Optional[TournamentCreateRequestBody_registrationMode] = None
    # Unix ms.
    registration_starts_at: Optional[int] = None
    # The rules property
    rules: Optional[str] = None
    # Defaults to the platform default when omitted. NOT editable afterwards.
    seeding_method: Optional[TournamentCreateRequestBody_seedingMethod] = None
    # Organizer social links.
    social_links: Optional[TournamentSocialLinks] = None
    # Bounded by the host plan's sponsor-tag limit.
    sponsor_tags: Optional[list[TournamentSponsorTag]] = None
    # Unix ms.
    starts_at: Optional[int] = None
    # Players per side.
    team_size: Optional[int] = None
    # The visibility property
    visibility: Optional[TournamentCreateRequestBody_visibility] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentCreateRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentCreateRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentCreateRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_create_request_body_host_type import TournamentCreateRequestBody_hostType
        from .tournament_create_request_body_registration_mode import TournamentCreateRequestBody_registrationMode
        from .tournament_create_request_body_seeding_method import TournamentCreateRequestBody_seedingMethod
        from .tournament_create_request_body_visibility import TournamentCreateRequestBody_visibility
        from .tournament_default_match_config import TournamentDefaultMatchConfig
        from .tournament_format import TournamentFormat
        from .tournament_format_config import TournamentFormatConfig
        from .tournament_placement_points_entry import TournamentPlacementPointsEntry
        from .tournament_prize_breakdown_entry import TournamentPrizeBreakdownEntry
        from .tournament_social_links import TournamentSocialLinks
        from .tournament_sponsor_tag import TournamentSponsorTag

        from .tournament_create_request_body_host_type import TournamentCreateRequestBody_hostType
        from .tournament_create_request_body_registration_mode import TournamentCreateRequestBody_registrationMode
        from .tournament_create_request_body_seeding_method import TournamentCreateRequestBody_seedingMethod
        from .tournament_create_request_body_visibility import TournamentCreateRequestBody_visibility
        from .tournament_default_match_config import TournamentDefaultMatchConfig
        from .tournament_format import TournamentFormat
        from .tournament_format_config import TournamentFormatConfig
        from .tournament_placement_points_entry import TournamentPlacementPointsEntry
        from .tournament_prize_breakdown_entry import TournamentPrizeBreakdownEntry
        from .tournament_social_links import TournamentSocialLinks
        from .tournament_sponsor_tag import TournamentSponsorTag

        fields: dict[str, Callable[[Any], None]] = {
            "bannerStorageId": lambda n : setattr(self, 'banner_storage_id', n.get_str_value()),
            "checkInOpensMinutesBefore": lambda n : setattr(self, 'check_in_opens_minutes_before', n.get_int_value()),
            "checkInRequired": lambda n : setattr(self, 'check_in_required', n.get_bool_value()),
            "defaultMatchConfig": lambda n : setattr(self, 'default_match_config', n.get_object_value(TournamentDefaultMatchConfig)),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "endsAt": lambda n : setattr(self, 'ends_at', n.get_int_value()),
            "format": lambda n : setattr(self, 'format', n.get_enum_value(TournamentFormat)),
            "formatConfig": lambda n : setattr(self, 'format_config', n.get_object_value(TournamentFormatConfig)),
            "freeAgentsEnabled": lambda n : setattr(self, 'free_agents_enabled', n.get_bool_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "hostId": lambda n : setattr(self, 'host_id', n.get_str_value()),
            "hostType": lambda n : setattr(self, 'host_type', n.get_enum_value(TournamentCreateRequestBody_hostType)),
            "leaguePointsByPlacement": lambda n : setattr(self, 'league_points_by_placement', n.get_collection_of_object_values(TournamentPlacementPointsEntry)),
            "leaguePointsEnabled": lambda n : setattr(self, 'league_points_enabled', n.get_bool_value()),
            "logoStorageId": lambda n : setattr(self, 'logo_storage_id', n.get_str_value()),
            "maxParticipants": lambda n : setattr(self, 'max_participants', n.get_int_value()),
            "minParticipants": lambda n : setattr(self, 'min_participants', n.get_int_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "playlistId": lambda n : setattr(self, 'playlist_id', n.get_str_value()),
            "prizeBreakdown": lambda n : setattr(self, 'prize_breakdown', n.get_collection_of_object_values(TournamentPrizeBreakdownEntry)),
            "prizeCurrency": lambda n : setattr(self, 'prize_currency', n.get_str_value()),
            "prizeDescription": lambda n : setattr(self, 'prize_description', n.get_str_value()),
            "prizePool": lambda n : setattr(self, 'prize_pool', n.get_float_value()),
            "registrationEndsAt": lambda n : setattr(self, 'registration_ends_at', n.get_int_value()),
            "registrationMode": lambda n : setattr(self, 'registration_mode', n.get_enum_value(TournamentCreateRequestBody_registrationMode)),
            "registrationStartsAt": lambda n : setattr(self, 'registration_starts_at', n.get_int_value()),
            "rules": lambda n : setattr(self, 'rules', n.get_str_value()),
            "seedingMethod": lambda n : setattr(self, 'seeding_method', n.get_enum_value(TournamentCreateRequestBody_seedingMethod)),
            "socialLinks": lambda n : setattr(self, 'social_links', n.get_object_value(TournamentSocialLinks)),
            "sponsorTags": lambda n : setattr(self, 'sponsor_tags', n.get_collection_of_object_values(TournamentSponsorTag)),
            "startsAt": lambda n : setattr(self, 'starts_at', n.get_int_value()),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_int_value()),
            "visibility": lambda n : setattr(self, 'visibility', n.get_enum_value(TournamentCreateRequestBody_visibility)),
        }
        return fields
    
    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        writer.write_str_value("bannerStorageId", self.banner_storage_id)
        writer.write_int_value("checkInOpensMinutesBefore", self.check_in_opens_minutes_before)
        writer.write_bool_value("checkInRequired", self.check_in_required)
        writer.write_object_value("defaultMatchConfig", self.default_match_config)
        writer.write_str_value("description", self.description)
        writer.write_int_value("endsAt", self.ends_at)
        writer.write_enum_value("format", self.format)
        writer.write_object_value("formatConfig", self.format_config)
        writer.write_bool_value("freeAgentsEnabled", self.free_agents_enabled)
        writer.write_str_value("gameId", self.game_id)
        writer.write_str_value("hostId", self.host_id)
        writer.write_enum_value("hostType", self.host_type)
        writer.write_collection_of_object_values("leaguePointsByPlacement", self.league_points_by_placement)
        writer.write_bool_value("leaguePointsEnabled", self.league_points_enabled)
        writer.write_str_value("logoStorageId", self.logo_storage_id)
        writer.write_int_value("maxParticipants", self.max_participants)
        writer.write_int_value("minParticipants", self.min_participants)
        writer.write_str_value("name", self.name)
        writer.write_str_value("playlistId", self.playlist_id)
        writer.write_collection_of_object_values("prizeBreakdown", self.prize_breakdown)
        writer.write_str_value("prizeCurrency", self.prize_currency)
        writer.write_str_value("prizeDescription", self.prize_description)
        writer.write_float_value("prizePool", self.prize_pool)
        writer.write_int_value("registrationEndsAt", self.registration_ends_at)
        writer.write_enum_value("registrationMode", self.registration_mode)
        writer.write_int_value("registrationStartsAt", self.registration_starts_at)
        writer.write_str_value("rules", self.rules)
        writer.write_enum_value("seedingMethod", self.seeding_method)
        writer.write_object_value("socialLinks", self.social_links)
        writer.write_collection_of_object_values("sponsorTags", self.sponsor_tags)
        writer.write_int_value("startsAt", self.starts_at)
        writer.write_int_value("teamSize", self.team_size)
        writer.write_enum_value("visibility", self.visibility)
        writer.write_additional_data_value(self.additional_data)
    

