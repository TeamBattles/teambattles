from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import AdditionalDataHolder, Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .update_points_config_request_body_streak_breakpoints import UpdatePointsConfigRequestBody_streakBreakpoints
    from .update_points_config_request_body_unit_label import UpdatePointsConfigRequestBody_unitLabel

@dataclass
class UpdatePointsConfigRequestBody(AdditionalDataHolder, Parsable):
    """
    Updates league points configuration.
    """
    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    additional_data: dict[str, Any] = field(default_factory=dict)

    # The allowNegative property
    allow_negative: Optional[bool] = None
    # The baseDraw property
    base_draw: Optional[float] = None
    # The baseLoss property
    base_loss: Optional[float] = None
    # The baseWin property
    base_win: Optional[float] = None
    # The challengeCancelGracePeriodHours property
    challenge_cancel_grace_period_hours: Optional[float] = None
    # The challengeRefuseAdditionalPenalty property
    challenge_refuse_additional_penalty: Optional[float] = None
    # The challengedWinBonus property
    challenged_win_bonus: Optional[float] = None
    # The challengerWinBonus property
    challenger_win_bonus: Optional[float] = None
    # The forfeitPenalty property
    forfeit_penalty: Optional[float] = None
    # Game ID whose points config should change.
    game_id: Optional[str] = None
    # The matchupCooldownHours property
    matchup_cooldown_hours: Optional[float] = None
    # The scrimmageAwardsPoints property
    scrimmage_awards_points: Optional[bool] = None
    # The streakBonusEnabled property
    streak_bonus_enabled: Optional[bool] = None
    # The streakBreakpoints property
    streak_breakpoints: Optional[list[UpdatePointsConfigRequestBody_streakBreakpoints]] = None
    # The unitLabel property
    unit_label: Optional[UpdatePointsConfigRequestBody_unitLabel] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> UpdatePointsConfigRequestBody:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: UpdatePointsConfigRequestBody
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return UpdatePointsConfigRequestBody()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        from .update_points_config_request_body_streak_breakpoints import UpdatePointsConfigRequestBody_streakBreakpoints
        from .update_points_config_request_body_unit_label import UpdatePointsConfigRequestBody_unitLabel

        from .update_points_config_request_body_streak_breakpoints import UpdatePointsConfigRequestBody_streakBreakpoints
        from .update_points_config_request_body_unit_label import UpdatePointsConfigRequestBody_unitLabel

        fields: dict[str, Callable[[Any], None]] = {
            "allowNegative": lambda n : setattr(self, 'allow_negative', n.get_bool_value()),
            "baseDraw": lambda n : setattr(self, 'base_draw', n.get_float_value()),
            "baseLoss": lambda n : setattr(self, 'base_loss', n.get_float_value()),
            "baseWin": lambda n : setattr(self, 'base_win', n.get_float_value()),
            "challengeCancelGracePeriodHours": lambda n : setattr(self, 'challenge_cancel_grace_period_hours', n.get_float_value()),
            "challengeRefuseAdditionalPenalty": lambda n : setattr(self, 'challenge_refuse_additional_penalty', n.get_float_value()),
            "challengedWinBonus": lambda n : setattr(self, 'challenged_win_bonus', n.get_float_value()),
            "challengerWinBonus": lambda n : setattr(self, 'challenger_win_bonus', n.get_float_value()),
            "forfeitPenalty": lambda n : setattr(self, 'forfeit_penalty', n.get_float_value()),
            "gameId": lambda n : setattr(self, 'game_id', n.get_str_value()),
            "matchupCooldownHours": lambda n : setattr(self, 'matchup_cooldown_hours', n.get_float_value()),
            "scrimmageAwardsPoints": lambda n : setattr(self, 'scrimmage_awards_points', n.get_bool_value()),
            "streakBonusEnabled": lambda n : setattr(self, 'streak_bonus_enabled', n.get_bool_value()),
            "streakBreakpoints": lambda n : setattr(self, 'streak_breakpoints', n.get_collection_of_object_values(UpdatePointsConfigRequestBody_streakBreakpoints)),
            "unitLabel": lambda n : setattr(self, 'unit_label', n.get_enum_value(UpdatePointsConfigRequestBody_unitLabel)),
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
        writer.write_bool_value("allowNegative", self.allow_negative)
        writer.write_float_value("baseDraw", self.base_draw)
        writer.write_float_value("baseLoss", self.base_loss)
        writer.write_float_value("baseWin", self.base_win)
        writer.write_float_value("challengeCancelGracePeriodHours", self.challenge_cancel_grace_period_hours)
        writer.write_float_value("challengeRefuseAdditionalPenalty", self.challenge_refuse_additional_penalty)
        writer.write_float_value("challengedWinBonus", self.challenged_win_bonus)
        writer.write_float_value("challengerWinBonus", self.challenger_win_bonus)
        writer.write_float_value("forfeitPenalty", self.forfeit_penalty)
        writer.write_str_value("gameId", self.game_id)
        writer.write_float_value("matchupCooldownHours", self.matchup_cooldown_hours)
        writer.write_bool_value("scrimmageAwardsPoints", self.scrimmage_awards_points)
        writer.write_bool_value("streakBonusEnabled", self.streak_bonus_enabled)
        writer.write_collection_of_object_values("streakBreakpoints", self.streak_breakpoints)
        writer.write_enum_value("unitLabel", self.unit_label)
        writer.write_additional_data_value(self.additional_data)
    

