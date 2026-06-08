require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Updates league points configuration.
            class UpdatePointsConfigRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The allowNegative property
                @allow_negative
                ## 
                # The baseDraw property
                @base_draw
                ## 
                # The baseLoss property
                @base_loss
                ## 
                # The baseWin property
                @base_win
                ## 
                # The challengeCancelGracePeriodHours property
                @challenge_cancel_grace_period_hours
                ## 
                # The challengeRefuseAdditionalPenalty property
                @challenge_refuse_additional_penalty
                ## 
                # The challengedWinBonus property
                @challenged_win_bonus
                ## 
                # The challengerWinBonus property
                @challenger_win_bonus
                ## 
                # The forfeitPenalty property
                @forfeit_penalty
                ## 
                # Game ID whose points config should change.
                @game_id
                ## 
                # The matchupCooldownHours property
                @matchup_cooldown_hours
                ## 
                # The scrimmageAwardsPoints property
                @scrimmage_awards_points
                ## 
                # The streakBonusEnabled property
                @streak_bonus_enabled
                ## 
                # The streakBreakpoints property
                @streak_breakpoints
                ## 
                # The unitLabel property
                @unit_label
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
                ## Gets the allowNegative property value. The allowNegative property
                ## @return a boolean
                ## 
                def allow_negative
                    return @allow_negative
                end
                ## 
                ## Sets the allowNegative property value. The allowNegative property
                ## @param value Value to set for the allowNegative property.
                ## @return a void
                ## 
                def allow_negative=(value)
                    @allow_negative = value
                end
                ## 
                ## Gets the baseDraw property value. The baseDraw property
                ## @return a double
                ## 
                def base_draw
                    return @base_draw
                end
                ## 
                ## Sets the baseDraw property value. The baseDraw property
                ## @param value Value to set for the baseDraw property.
                ## @return a void
                ## 
                def base_draw=(value)
                    @base_draw = value
                end
                ## 
                ## Gets the baseLoss property value. The baseLoss property
                ## @return a double
                ## 
                def base_loss
                    return @base_loss
                end
                ## 
                ## Sets the baseLoss property value. The baseLoss property
                ## @param value Value to set for the baseLoss property.
                ## @return a void
                ## 
                def base_loss=(value)
                    @base_loss = value
                end
                ## 
                ## Gets the baseWin property value. The baseWin property
                ## @return a double
                ## 
                def base_win
                    return @base_win
                end
                ## 
                ## Sets the baseWin property value. The baseWin property
                ## @param value Value to set for the baseWin property.
                ## @return a void
                ## 
                def base_win=(value)
                    @base_win = value
                end
                ## 
                ## Gets the challengeCancelGracePeriodHours property value. The challengeCancelGracePeriodHours property
                ## @return a double
                ## 
                def challenge_cancel_grace_period_hours
                    return @challenge_cancel_grace_period_hours
                end
                ## 
                ## Sets the challengeCancelGracePeriodHours property value. The challengeCancelGracePeriodHours property
                ## @param value Value to set for the challengeCancelGracePeriodHours property.
                ## @return a void
                ## 
                def challenge_cancel_grace_period_hours=(value)
                    @challenge_cancel_grace_period_hours = value
                end
                ## 
                ## Gets the challengeRefuseAdditionalPenalty property value. The challengeRefuseAdditionalPenalty property
                ## @return a double
                ## 
                def challenge_refuse_additional_penalty
                    return @challenge_refuse_additional_penalty
                end
                ## 
                ## Sets the challengeRefuseAdditionalPenalty property value. The challengeRefuseAdditionalPenalty property
                ## @param value Value to set for the challengeRefuseAdditionalPenalty property.
                ## @return a void
                ## 
                def challenge_refuse_additional_penalty=(value)
                    @challenge_refuse_additional_penalty = value
                end
                ## 
                ## Gets the challengedWinBonus property value. The challengedWinBonus property
                ## @return a double
                ## 
                def challenged_win_bonus
                    return @challenged_win_bonus
                end
                ## 
                ## Sets the challengedWinBonus property value. The challengedWinBonus property
                ## @param value Value to set for the challengedWinBonus property.
                ## @return a void
                ## 
                def challenged_win_bonus=(value)
                    @challenged_win_bonus = value
                end
                ## 
                ## Gets the challengerWinBonus property value. The challengerWinBonus property
                ## @return a double
                ## 
                def challenger_win_bonus
                    return @challenger_win_bonus
                end
                ## 
                ## Sets the challengerWinBonus property value. The challengerWinBonus property
                ## @param value Value to set for the challengerWinBonus property.
                ## @return a void
                ## 
                def challenger_win_bonus=(value)
                    @challenger_win_bonus = value
                end
                ## 
                ## Instantiates a new UpdatePointsConfigRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_points_config_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdatePointsConfigRequestBody.new
                end
                ## 
                ## Gets the forfeitPenalty property value. The forfeitPenalty property
                ## @return a double
                ## 
                def forfeit_penalty
                    return @forfeit_penalty
                end
                ## 
                ## Sets the forfeitPenalty property value. The forfeitPenalty property
                ## @param value Value to set for the forfeitPenalty property.
                ## @return a void
                ## 
                def forfeit_penalty=(value)
                    @forfeit_penalty = value
                end
                ## 
                ## Gets the gameId property value. Game ID whose points config should change.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID whose points config should change.
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
                        "allowNegative" => lambda {|n| @allow_negative = n.get_boolean_value() },
                        "baseDraw" => lambda {|n| @base_draw = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "baseLoss" => lambda {|n| @base_loss = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "baseWin" => lambda {|n| @base_win = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "challengeCancelGracePeriodHours" => lambda {|n| @challenge_cancel_grace_period_hours = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "challengeRefuseAdditionalPenalty" => lambda {|n| @challenge_refuse_additional_penalty = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "challengedWinBonus" => lambda {|n| @challenged_win_bonus = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "challengerWinBonus" => lambda {|n| @challenger_win_bonus = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "forfeitPenalty" => lambda {|n| @forfeit_penalty = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "matchupCooldownHours" => lambda {|n| @matchup_cooldown_hours = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "scrimmageAwardsPoints" => lambda {|n| @scrimmage_awards_points = n.get_boolean_value() },
                        "streakBonusEnabled" => lambda {|n| @streak_bonus_enabled = n.get_boolean_value() },
                        "streakBreakpoints" => lambda {|n| @streak_breakpoints = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::UpdatePointsConfigRequestBodyStreakBreakpoints.create_from_discriminator_value(pn) }) },
                        "unitLabel" => lambda {|n| @unit_label = n.get_enum_value(TeamBattlesSdk::Generated::Models::UpdatePointsConfigRequestBodyUnitLabel) },
                    }
                end
                ## 
                ## Gets the matchupCooldownHours property value. The matchupCooldownHours property
                ## @return a double
                ## 
                def matchup_cooldown_hours
                    return @matchup_cooldown_hours
                end
                ## 
                ## Sets the matchupCooldownHours property value. The matchupCooldownHours property
                ## @param value Value to set for the matchupCooldownHours property.
                ## @return a void
                ## 
                def matchup_cooldown_hours=(value)
                    @matchup_cooldown_hours = value
                end
                ## 
                ## Gets the scrimmageAwardsPoints property value. The scrimmageAwardsPoints property
                ## @return a boolean
                ## 
                def scrimmage_awards_points
                    return @scrimmage_awards_points
                end
                ## 
                ## Sets the scrimmageAwardsPoints property value. The scrimmageAwardsPoints property
                ## @param value Value to set for the scrimmageAwardsPoints property.
                ## @return a void
                ## 
                def scrimmage_awards_points=(value)
                    @scrimmage_awards_points = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("allowNegative", @allow_negative)
                    writer.write_object_value("baseDraw", @base_draw)
                    writer.write_object_value("baseLoss", @base_loss)
                    writer.write_object_value("baseWin", @base_win)
                    writer.write_object_value("challengeCancelGracePeriodHours", @challenge_cancel_grace_period_hours)
                    writer.write_object_value("challengeRefuseAdditionalPenalty", @challenge_refuse_additional_penalty)
                    writer.write_object_value("challengedWinBonus", @challenged_win_bonus)
                    writer.write_object_value("challengerWinBonus", @challenger_win_bonus)
                    writer.write_object_value("forfeitPenalty", @forfeit_penalty)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_object_value("matchupCooldownHours", @matchup_cooldown_hours)
                    writer.write_boolean_value("scrimmageAwardsPoints", @scrimmage_awards_points)
                    writer.write_boolean_value("streakBonusEnabled", @streak_bonus_enabled)
                    writer.write_collection_of_object_values("streakBreakpoints", @streak_breakpoints)
                    writer.write_enum_value("unitLabel", @unit_label)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the streakBonusEnabled property value. The streakBonusEnabled property
                ## @return a boolean
                ## 
                def streak_bonus_enabled
                    return @streak_bonus_enabled
                end
                ## 
                ## Sets the streakBonusEnabled property value. The streakBonusEnabled property
                ## @param value Value to set for the streakBonusEnabled property.
                ## @return a void
                ## 
                def streak_bonus_enabled=(value)
                    @streak_bonus_enabled = value
                end
                ## 
                ## Gets the streakBreakpoints property value. The streakBreakpoints property
                ## @return a update_points_config_request_body_streak_breakpoints
                ## 
                def streak_breakpoints
                    return @streak_breakpoints
                end
                ## 
                ## Sets the streakBreakpoints property value. The streakBreakpoints property
                ## @param value Value to set for the streakBreakpoints property.
                ## @return a void
                ## 
                def streak_breakpoints=(value)
                    @streak_breakpoints = value
                end
                ## 
                ## Gets the unitLabel property value. The unitLabel property
                ## @return a update_points_config_request_body_unit_label
                ## 
                def unit_label
                    return @unit_label
                end
                ## 
                ## Sets the unitLabel property value. The unitLabel property
                ## @param value Value to set for the unitLabel property.
                ## @return a void
                ## 
                def unit_label=(value)
                    @unit_label = value
                end
            end
        end
    end
end
