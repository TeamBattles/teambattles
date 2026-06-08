// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy_description_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiStrategyDescriptionMember1], [String?]
class ApiStrategyDescription implements Parsable {
    ///  Composed type representation for type [ApiStrategyDescriptionMember1]
    ApiStrategyDescriptionMember1? apiStrategyDescriptionMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategyDescription createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiStrategyDescription();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiStrategyDescriptionMember1 = ApiStrategyDescriptionMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiStrategyDescriptionMember1 != null){apiStrategyDescriptionMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiStrategyDescriptionMember1>(null, apiStrategyDescriptionMember1);
        }
    }
}
