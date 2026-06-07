// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_member.dart';

/// auto generated
/// Envelope containing members, count, and a response timestamp.
class MembersGetResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The members property
    Iterable<ApiMember>? members;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MembersGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return MembersGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['members'] = (node) => members = node.getCollectionOfObjectValues<ApiMember>(ApiMember.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<ApiMember>('members', members);
        writer.writeStringValue('timestamp', timestamp);
    }
}
