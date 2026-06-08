// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy_updated_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiStrategyUpdatedAtMember1], [String?]
class ApiStrategyUpdatedAt implements Parsable {
    ///  Composed type representation for type [ApiStrategyUpdatedAtMember1]
    ApiStrategyUpdatedAtMember1? apiStrategyUpdatedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategyUpdatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiStrategyUpdatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiStrategyUpdatedAtMember1 = ApiStrategyUpdatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiStrategyUpdatedAtMember1 != null){apiStrategyUpdatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<ApiStrategyUpdatedAtMember1>(null, apiStrategyUpdatedAtMember1);
        }
    }
}
