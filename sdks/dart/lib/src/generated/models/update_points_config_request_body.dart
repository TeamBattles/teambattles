// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_points_config_request_body_streak_breakpoints.dart';
import './update_points_config_request_body_unit_label.dart';

/// auto generated
/// Updates league points configuration.
class UpdatePointsConfigRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The allowNegative property
    bool? allowNegative;
    ///  The baseDraw property
    double? baseDraw;
    ///  The baseLoss property
    double? baseLoss;
    ///  The baseWin property
    double? baseWin;
    ///  The challengeCancelGracePeriodHours property
    double? challengeCancelGracePeriodHours;
    ///  The challengedWinBonus property
    double? challengedWinBonus;
    ///  The challengeRefuseAdditionalPenalty property
    double? challengeRefuseAdditionalPenalty;
    ///  The challengerWinBonus property
    double? challengerWinBonus;
    ///  The forfeitPenalty property
    double? forfeitPenalty;
    ///  Game ID whose points config should change.
    String? gameId;
    ///  The matchupCooldownHours property
    double? matchupCooldownHours;
    ///  The scrimmageAwardsPoints property
    bool? scrimmageAwardsPoints;
    ///  The streakBonusEnabled property
    bool? streakBonusEnabled;
    ///  The streakBreakpoints property
    Iterable<UpdatePointsConfigRequestBodyStreakBreakpoints>? streakBreakpoints;
    ///  The unitLabel property
    UpdatePointsConfigRequestBodyUnitLabel? unitLabel;
    /// Instantiates a new [UpdatePointsConfigRequestBody] and sets the default values.
    UpdatePointsConfigRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdatePointsConfigRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdatePointsConfigRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['allowNegative'] = (node) => allowNegative = node.getBoolValue();
        deserializerMap['baseDraw'] = (node) => baseDraw = node.getDoubleValue();
        deserializerMap['baseLoss'] = (node) => baseLoss = node.getDoubleValue();
        deserializerMap['baseWin'] = (node) => baseWin = node.getDoubleValue();
        deserializerMap['challengeCancelGracePeriodHours'] = (node) => challengeCancelGracePeriodHours = node.getDoubleValue();
        deserializerMap['challengedWinBonus'] = (node) => challengedWinBonus = node.getDoubleValue();
        deserializerMap['challengeRefuseAdditionalPenalty'] = (node) => challengeRefuseAdditionalPenalty = node.getDoubleValue();
        deserializerMap['challengerWinBonus'] = (node) => challengerWinBonus = node.getDoubleValue();
        deserializerMap['forfeitPenalty'] = (node) => forfeitPenalty = node.getDoubleValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['matchupCooldownHours'] = (node) => matchupCooldownHours = node.getDoubleValue();
        deserializerMap['scrimmageAwardsPoints'] = (node) => scrimmageAwardsPoints = node.getBoolValue();
        deserializerMap['streakBonusEnabled'] = (node) => streakBonusEnabled = node.getBoolValue();
        deserializerMap['streakBreakpoints'] = (node) => streakBreakpoints = node.getCollectionOfObjectValues<UpdatePointsConfigRequestBodyStreakBreakpoints>(UpdatePointsConfigRequestBodyStreakBreakpoints.createFromDiscriminatorValue);
        deserializerMap['unitLabel'] = (node) => unitLabel = node.getEnumValue<UpdatePointsConfigRequestBodyUnitLabel>((stringValue) => UpdatePointsConfigRequestBodyUnitLabel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('allowNegative', value:allowNegative);
        writer.writeDoubleValue('baseDraw', baseDraw);
        writer.writeDoubleValue('baseLoss', baseLoss);
        writer.writeDoubleValue('baseWin', baseWin);
        writer.writeDoubleValue('challengeCancelGracePeriodHours', challengeCancelGracePeriodHours);
        writer.writeDoubleValue('challengedWinBonus', challengedWinBonus);
        writer.writeDoubleValue('challengeRefuseAdditionalPenalty', challengeRefuseAdditionalPenalty);
        writer.writeDoubleValue('challengerWinBonus', challengerWinBonus);
        writer.writeDoubleValue('forfeitPenalty', forfeitPenalty);
        writer.writeStringValue('gameId', gameId);
        writer.writeDoubleValue('matchupCooldownHours', matchupCooldownHours);
        writer.writeBoolValue('scrimmageAwardsPoints', value:scrimmageAwardsPoints);
        writer.writeBoolValue('streakBonusEnabled', value:streakBonusEnabled);
        writer.writeCollectionOfObjectValues<UpdatePointsConfigRequestBodyStreakBreakpoints>('streakBreakpoints', streakBreakpoints);
        writer.writeEnumValue<UpdatePointsConfigRequestBodyUnitLabel>('unitLabel', unitLabel, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
