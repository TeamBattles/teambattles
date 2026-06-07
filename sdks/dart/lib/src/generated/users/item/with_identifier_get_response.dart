// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/api_user_profile.dart';

/// auto generated
/// Envelope containing user plus a response timestamp.
class WithIdentifierGetResponse implements Parsable {
    ///  ISO 8601 timestamp.
    String? timestamp;
    ///  API-safe public user profile.
    ApiUserProfile? user;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WithIdentifierGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return WithIdentifierGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['user'] = (node) => user = node.getObjectValue<ApiUserProfile>(ApiUserProfile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('timestamp', timestamp);
        writer.writeObjectValue<ApiUserProfile>('user', user);
    }
}
