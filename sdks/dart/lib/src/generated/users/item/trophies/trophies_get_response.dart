// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_user_trophy.dart';

/// auto generated
/// Envelope containing trophies, count, and a response timestamp.
class TrophiesGetResponse implements Parsable {
    ///  The count property
    int? count;
    ///  ISO 8601 timestamp.
    String? timestamp;
    ///  The trophies property
    Iterable<ApiUserTrophy>? trophies;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TrophiesGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TrophiesGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['trophies'] = (node) => trophies = node.getCollectionOfObjectValues<ApiUserTrophy>(ApiUserTrophy.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeCollectionOfObjectValues<ApiUserTrophy>('trophies', trophies);
    }
}
