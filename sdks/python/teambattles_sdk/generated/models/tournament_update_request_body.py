from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_format_config import TournamentFormatConfig
    from .tournament_prize_breakdown_entry import TournamentPrizeBreakdownEntry
    from .tournament_social_links import TournamentSocialLinks
    from .tournament_sponsor_tag import TournamentSponsorTag
    from .tournament_update_request_body_format import TournamentUpdateRequestBody_format
    from .tournament_update_request_body_registration_mode import TournamentUpdateRequestBody_registrationMode
    from .tournament_update_request_body_visibility import TournamentUpdateRequestBody_visibility

@dataclass
class TournamentUpdateRequestBody(AdditionalDataHolder, Parsable):
    """
    Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Convex storage id.
    banner_storage_id: Optional[str] = None
    # The checkInOpensMinutesBefore property
    check_in_opens_minutes_before: Optional[int] = None
    # The checkInRequired property
    check_in_required: Optional[bool] = None
    # The description property
    description: Optional[str] = None
    # Unix ms.
    ends_at: Optional[int] = None
    # The format property
    format: Optional[TournamentUpdateRequestBody_format] = None
    # Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
    format_config: Optional[TournamentFormatConfig] = None
    # Convex game id.
    game_id: Optional[str] = None
    # Convex storage id.
    logo_storage_id: Optional[str] = None
    # Re-checked against the format entrant ceiling AND the host plan's participant limit whenever it or `format` changes.
    max_participants: Optional[int] = None
    # The minParticipants property
    min_participants: Optional[int] = None
    # The name property
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
    registration_mode: Optional[TournamentUpdateRequestBody_registrationMode] = None
    # Unix ms.
    registration_starts_at: Optional[int] = None
    # The rules property
    rules: Optional[str] = None
    # Organizer social links.
    social_links: Optional[TournamentSocialLinks] = None
    # The sponsorTags property
    sponsor_tags: Optional[list[TournamentSponsorTag]] = None
    # Unix ms.
    starts_at: Optional[int] = None
    # The teamSize property
    team_size: Optional[int] = None
    # The visibility property
    visibility: Optional[TournamentUpdateRequestBody_visibility] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentUpdateRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentUpdateRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentUpdateRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_format_config import TournamentFormatConfig
        from .tournament_prize_breakdown_entry import TournamentPrizeBreakdownEntry
        from .tournament_social_links import TournamentSocialLinks
        from .tournament_sponsor_tag import TournamentSponsorTag
        from .tournament_update_request_body_format import TournamentUpdateRequestBody_format
        from .tournament_update_request_body_registration_mode import TournamentUpdateRequestBody_registrationMode
        from .tournament_update_request_body_visibility import TournamentUpdateRequestBody_visibility

        from .tournament_format_config import TournamentFormatConfig
        from .tournament_prize_breakdown_entry import TournamentPrizeBreakdownEntry
        from .tournament_social_links import TournamentSocialLinks
        from .tournament_sponsor_tag import TournamentSponsorTag
        from .tournament_update_request_body_format import TournamentUpdateRequestBody_format
        from .tournament_update_request_body_registration_mode import TournamentUpdateRequestBody_registrationMode
        from .tournament_update_request_body_visibility import TournamentUpdateRequestBody_visibility

        fields: dict[str, Callable[[Any], None]] = {
            "bannerStorageId": lambda n : setattr(self, 'banner_storage_id', n.get_str_value()),
            "checkInOpensMinutesBefore": lambda n : setattr(self, 'check_in_opens_minutes_before', n.get_int_value()),
            "checkInRequired": lambda n : setattr(self, 'check_in_required', n.get_bool_value()),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "endsAt": lambda n : setattr(self, 'ends_at', n.get_int_value()),
            "format": lambda n : setattr(self, 'format', n.get_enum_value(TournamentUpdateRequestBody_format)),
            "formatConfig": lambda n : setattr(self, 'format_config', n.get_object_value(TournamentFormatConfig)),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
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
            "registrationMode": lambda n : setattr(self, 'registration_mode', n.get_enum_value(TournamentUpdateRequestBody_registrationMode)),
            "registrationStartsAt": lambda n : setattr(self, 'registration_starts_at', n.get_int_value()),
            "rules": lambda n : setattr(self, 'rules', n.get_str_value()),
            "socialLinks": lambda n : setattr(self, 'social_links', n.get_object_value(TournamentSocialLinks)),
            "sponsorTags": lambda n : setattr(self, 'sponsor_tags', n.get_collection_of_object_values(TournamentSponsorTag)),
            "startsAt": lambda n : setattr(self, 'starts_at', n.get_int_value()),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_int_value()),
            "visibility": lambda n : setattr(self, 'visibility', n.get_enum_value(TournamentUpdateRequestBody_visibility)),
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
        writer.write_str_value("description", self.description)
        writer.write_int_value("endsAt", self.ends_at)
        writer.write_enum_value("format", self.format)
        writer.write_object_value("formatConfig", self.format_config)
        writer.write_str_value("gameId", self.game_id)
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
        writer.write_object_value("socialLinks", self.social_links)
        writer.write_collection_of_object_values("sponsorTags", self.sponsor_tags)
        writer.write_int_value("startsAt", self.starts_at)
        writer.write_int_value("teamSize", self.team_size)
        writer.write_enum_value("visibility", self.visibility)
        writer.write_additional_data_value(self.additional_data)
    

