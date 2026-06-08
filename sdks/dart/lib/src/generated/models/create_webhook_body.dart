// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Create a webhook endpoint in the caller's scope.
class CreateWebhookBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Subscribed event tokens: exact catalog names (e.g. match.completed) or family wildcards (e.g. match.*). At least one required.
    Iterable<String>? events;
    ///  Optional human label for the endpoint.
    String? label;
    ///  HTTPS endpoint URL. Private/loopback/metadata hosts are rejected.
    String? url;
    /// Instantiates a new [CreateWebhookBody] and sets the default values.
    CreateWebhookBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateWebhookBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateWebhookBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['events'] = (node) => events = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['label'] = (node) => label = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('events', events);
        writer.writeStringValue('label', label);
        writer.writeStringValue('url', url);
        writer.writeAdditionalData(additionalData);
    }
}
