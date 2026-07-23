from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .tournament_format import TournamentFormat
    from .tournament_profile_banner_url import TournamentProfile_bannerUrl
    from .tournament_profile_logo_url import TournamentProfile_logoUrl
    from .tournament_profile_viewer_management import TournamentProfile_viewerManagement
    from .tournament_status import TournamentStatus

@dataclass
class TournamentProfile(AdditionalDataHolder, Parsable):
    """
    Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # Platform review state, independent of `status`.
    approval_status: Optional[str] = None
    # Banner image URL.
    banner_url: Optional[TournamentProfile_bannerUrl] = None
    # Bracket format of a tournament.
    format: Optional[TournamentFormat] = None
    # Tournament ID.
    id: Optional[str] = None
    # Whether the tournament appears in discovery.
    is_publicly_listed: Optional[bool] = None
    # Logo image URL.
    logo_url: Optional[TournamentProfile_logoUrl] = None
    # Participant cap.
    max_participants: Optional[int] = None
    # Tournament display name.
    name: Optional[str] = None
    # Whether the tournament is non-terminal AND awaiting organizer action on approval.
    needs_attention: Optional[bool] = None
    # Current number of participants.
    participant_count: Optional[int] = None
    # URL-friendly tournament identifier.
    slug: Optional[str] = None
    # Lifecycle status of a tournament.
    status: Optional[TournamentStatus] = None
    # Players per participating team.
    team_size: Optional[int] = None
    # The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
    viewer_management: Optional[TournamentProfile_viewerManagement] = None
    # PUBLIC or UNLISTED.
    visibility: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TournamentProfile:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TournamentProfile
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return TournamentProfile()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .tournament_format import TournamentFormat
        from .tournament_profile_banner_url import TournamentProfile_bannerUrl
        from .tournament_profile_logo_url import TournamentProfile_logoUrl
        from .tournament_profile_viewer_management import TournamentProfile_viewerManagement
        from .tournament_status import TournamentStatus

        from .tournament_format import TournamentFormat
        from .tournament_profile_banner_url import TournamentProfile_bannerUrl
        from .tournament_profile_logo_url import TournamentProfile_logoUrl
        from .tournament_profile_viewer_management import TournamentProfile_viewerManagement
        from .tournament_status import TournamentStatus

        fields: dict[str, Callable[[Any], None]] = {
            "approvalStatus": lambda n : setattr(self, 'approval_status', n.get_str_value()),
            "bannerUrl": lambda n : setattr(self, 'banner_url', n.get_object_value(TournamentProfile_bannerUrl)),
            "format": lambda n : setattr(self, 'format', n.get_enum_value(TournamentFormat)),
            "_id": lambda n : setattr(self, 'id', n.get_str_value()),
            "isPubliclyListed": lambda n : setattr(self, 'is_publicly_listed', n.get_bool_value()),
            "logoUrl": lambda n : setattr(self, 'logo_url', n.get_object_value(TournamentProfile_logoUrl)),
            "maxParticipants": lambda n : setattr(self, 'max_participants', n.get_int_value()),
            "name": lambda n : setattr(self, 'name', n.get_str_value()),
            "needsAttention": lambda n : setattr(self, 'needs_attention', n.get_bool_value()),
            "participantCount": lambda n : setattr(self, 'participant_count', n.get_int_value()),
            "slug": lambda n : setattr(self, 'slug', n.get_str_value()),
            "status": lambda n : setattr(self, 'status', n.get_enum_value(TournamentStatus)),
            "teamSize": lambda n : setattr(self, 'team_size', n.get_int_value()),
            "viewerManagement": lambda n : setattr(self, 'viewer_management', n.get_object_value(TournamentProfile_viewerManagement)),
            "visibility": lambda n : setattr(self, 'visibility', n.get_str_value()),
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
        writer.write_str_value("approvalStatus", self.approval_status)
        writer.write_object_value("bannerUrl", self.banner_url)
        writer.write_enum_value("format", self.format)
        writer.write_str_value("_id", self.id)
        writer.write_bool_value("isPubliclyListed", self.is_publicly_listed)
        writer.write_object_value("logoUrl", self.logo_url)
        writer.write_int_value("maxParticipants", self.max_participants)
        writer.write_str_value("name", self.name)
        writer.write_bool_value("needsAttention", self.needs_attention)
        writer.write_int_value("participantCount", self.participant_count)
        writer.write_str_value("slug", self.slug)
        writer.write_enum_value("status", self.status)
        writer.write_int_value("teamSize", self.team_size)
        writer.write_object_value("viewerManagement", self.viewer_management)
        writer.write_str_value("visibility", self.visibility)
        writer.write_additional_data_value(self.additional_data)
    

