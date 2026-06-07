// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_endpoint.dart';

/// auto generated
/// List of the caller's webhook endpoints.
class WebhookListResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The timestamp property
    String? timestamp;
    ///  The webhooks property
    Iterable<WebhookEndpoint>? webhooks;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookListResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookListResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['webhooks'] = (node) => webhooks = node.getCollectionOfObjectValues<WebhookEndpoint>(WebhookEndpoint.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeCollectionOfObjectValues<WebhookEndpoint>('webhooks', webhooks);
    }
}
