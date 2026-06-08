// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_primary_stream_viewer_count_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiPrimaryStreamViewerCountMember1], [int?]
class ApiPrimaryStreamViewerCount implements Parsable {
    ///  Composed type representation for type [ApiPrimaryStreamViewerCountMember1]
    ApiPrimaryStreamViewerCountMember1? apiPrimaryStreamViewerCountMember1;
    ///  Composed type representation for type [int?]
    int? integer;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiPrimaryStreamViewerCount createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiPrimaryStreamViewerCount();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.apiPrimaryStreamViewerCountMember1 = ApiPrimaryStreamViewerCountMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiPrimaryStreamViewerCountMember1 != null){apiPrimaryStreamViewerCountMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(integer != null) {
            writer.writeIntValue(null, integer);
        }
        else {
            writer.writeObjectValue<ApiPrimaryStreamViewerCountMember1>(null, apiPrimaryStreamViewerCountMember1);
        }
    }
}
