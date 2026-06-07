// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/api_organization_summary.dart';

/// auto generated
/// Envelope containing organizations, count, and a response timestamp.
class DiscoverGetResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The organizations property
    Iterable<ApiOrganizationSummary>? organizations;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DiscoverGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return DiscoverGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['organizations'] = (node) => organizations = node.getCollectionOfObjectValues<ApiOrganizationSummary>(ApiOrganizationSummary.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<ApiOrganizationSummary>('organizations', organizations);
        writer.writeStringValue('timestamp', timestamp);
    }
}
