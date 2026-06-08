// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy_stage_label.dart';

/// auto generated
/// A single playback stage of a strategy.
class ApiStrategyStage implements Parsable {
    ///  Stage playback duration in milliseconds.
    int? durationMs;
    ///  Stable stage id within the strategy.
    String? id;
    ///  Author stage label, when set.
    ApiStrategyStageLabel? label;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategyStage createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStrategyStage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['durationMs'] = (node) => durationMs = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['label'] = (node) => label = node.getObjectValue<ApiStrategyStageLabel>(ApiStrategyStageLabel.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('durationMs', durationMs);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiStrategyStageLabel>('label', label);
    }
}
