from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_format import TournamentFormat
    from .tournament_status import TournamentStatus
    from .tournament_summary_banner_url import TournamentSummary_bannerUrl
    from .tournament_summary_logo_url import TournamentSummary_logoUrl

@dataclass
class TournamentSummary(Parsable):
    """
    Summary view of a tournament for discovery.
    """
    # Banner image URL.
    banner_url: Optional[TournamentSummary_bannerUrl] = None
    # Short tournament description.
    description: Optional[str] = None
    # Bracket format of a tournament.
    format: Optional[TournamentFormat] = None
    # Tournament ID.
    id: Optional[str] = None
    # Whether the featured placement is live at request time.
    is_featured: Optional[bool] = None
    # Logo image URL.
    logo_url: Optional[TournamentSummary_logoUrl] = None
    # Participant cap.
    max_participants: Optional[int] = None
    # Tournament display name.
    name: Optional[str] = None
    # Current number of participants.
    participant_count: Optional[int] = None
    # ISO currency code of the pool.
    prize_currency: Optional[str] = None
    # Total prize pool.
    prize_pool: Optional[float] = None
    # URL-friendly tournament identifier.
    slug: Optional[str] = None
    # Scheduled start (epoch milliseconds).
    starts_at: Optional[float] = None
    # Lifecycle status of a tournament.
    status: Optional[TournamentStatus] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentSummary:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentSummary
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentSummary()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_format import TournamentFormat
        from .tournament_status import TournamentStatus
        from .tournament_summary_banner_url import TournamentSummary_bannerUrl
        from .tournament_summary_logo_url import TournamentSummary_logoUrl

        from .tournament_format import TournamentFormat
        from .tournament_status import TournamentStatus
        from .tournament_summary_banner_url import TournamentSummary_bannerUrl
        from .tournament_summary_logo_url import TournamentSummary_logoUrl

        fields: dict[str, Callable[[Any], None]] = {
            "bannerUrl": lambda n : setattr(self, 'banner_url', n.get_object_value(TournamentSummary_bannerUrl)),
            "description": lambda n : setattr(self, 'description', n.get_str_value()),
            "format": lambda n : setattr(self, 'format', n.get_enum_value(TournamentFormat)),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isFeatured": lambda n : setattr(self, 'is_featured', n.get_bool_value()),
            "logoUrl": lambda n : setattr(self, 'logo_url', n.get_object_value(TournamentSummary_logoUrl)),
            "maxParticipants": lambda n : setattr(self, 'max_participants', n.get_int_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "participantCount": lambda n : setattr(self, 'participant_count', n.get_int_value()),
            "prizeCurrency": lambda n : setattr(self, 'prize_currency', n.get_str_value()),
            "prizePool": lambda n : setattr(self, 'prize_pool', n.get_float_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "startsAt": lambda n : setattr(self, 'starts_at', n.get_float_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentStatus)),
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
        writer.write_object_value("bannerUrl", self.banner_url)
        writer.write_str_value("description", self.description)
        writer.write_enum_value("format", self.format)
        writer.write_str_value("id", self.id)
        writer.write_bool_value("isFeatured", self.is_featured)
        writer.write_object_value("logoUrl", self.logo_url)
        writer.write_int_value("maxParticipants", self.max_participants)
        writer.write_str_value("name", self.name)
        writer.write_int_value("participantCount", self.participant_count)
        writer.write_str_value("prizeCurrency", self.prize_currency)
        writer.write_float_value("prizePool", self.prize_pool)
        writer.write_str_value("slug", self.slug)
        writer.write_float_value("startsAt", self.starts_at)
        writer.write_enum_value("status", self.status)
    

