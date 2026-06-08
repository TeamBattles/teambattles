from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import ComposedTypeWrapper, Parsable, ParseNode, ParseNodeHelper, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .team_leaderboard_entry_game_slug_member1 import TeamLeaderboardEntry_gameSlugMember1

@dataclass
class TeamLeaderboardEntry_gameSlug(ComposedTypeWrapper, Parsable):
    """
    Composed type wrapper for classes str, TeamLeaderboardEntry_gameSlugMember1
    """
    # Composed type representation for type str
    string: Optional[str] = None
    # Composed type representation for type TeamLeaderboardEntry_gameSlugMember1
    team_leaderboard_entry_game_slug_member1: Optional[TeamLeaderboardEntry_gameSlugMember1] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> TeamLeaderboardEntry_gameSlug:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: TeamLeaderboardEntry_gameSlug
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        result = TeamLeaderboardEntry_gameSlug()
        if string_value := parse_node.get_str_value():
            result.string = string_value
        else:
            from .team_leaderboard_entry_game_slug_member1 import TeamLeaderboardEntry_gameSlugMember1

            result.team_leaderboard_entry_game_slug_member1 = TeamLeaderboardEntry_gameSlugMember1()
        return result
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .team_leaderboard_entry_game_slug_member1 import TeamLeaderboardEntry_gameSlugMember1

        if self.team_leaderboard_entry_game_slug_member1:
            return ParseNodeHelper.merge_deserializers_for_intersection_wrapper(self.team_leaderboard_entry_game_slug_member1)
        return {}
    
    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        if self.string:
            writer.write_str_value(None, self.string)
        else:
            writer.write_object_value(None, self.team_leaderboard_entry_game_slug_member1)
    

