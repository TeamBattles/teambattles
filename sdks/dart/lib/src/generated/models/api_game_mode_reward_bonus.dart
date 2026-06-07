// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_mode_reward_bonus_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiGameModeRewardBonusMember1], [double?]
class ApiGameModeRewardBonus implements Parsable {
    ///  Composed type representation for type [ApiGameModeRewardBonusMember1]
    ApiGameModeRewardBonusMember1? apiGameModeRewardBonusMember1;
    ///  Composed type representation for type [double?]
    double? double_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameModeRewardBonus createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiGameModeRewardBonus();
        if(parseNode.getDoubleValue() != null) {
            result.double_ = parseNode.getDoubleValue();
        }
        else {
            result.apiGameModeRewardBonusMember1 = ApiGameModeRewardBonusMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiGameModeRewardBonusMember1 != null){apiGameModeRewardBonusMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(double_ != null) {
            writer.writeDoubleValue(null, double_);
        }
        else {
            writer.writeObjectValue<ApiGameModeRewardBonusMember1>(null, apiGameModeRewardBonusMember1);
        }
    }
}
