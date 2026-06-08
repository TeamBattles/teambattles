// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_primary_stream_started_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiPrimaryStreamStartedAtMember1], [String?]
class ApiPrimaryStreamStartedAt implements Parsable {
    ///  Composed type representation for type [ApiPrimaryStreamStartedAtMember1]
    ApiPrimaryStreamStartedAtMember1? apiPrimaryStreamStartedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiPrimaryStreamStartedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiPrimaryStreamStartedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiPrimaryStreamStartedAtMember1 = ApiPrimaryStreamStartedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiPrimaryStreamStartedAtMember1 != null){apiPrimaryStreamStartedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiPrimaryStreamStartedAtMember1>(null, apiPrimaryStreamStartedAtMember1);
        }
    }
}
