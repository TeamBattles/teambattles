// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Partial update of a webhook endpoint.
class UpdateWebhookBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Replacement event token list (at least one when present).
    Iterable<String>? events;
    ///  Enable/disable the endpoint. Re-enabling resets the failure count.
    bool? isActive;
    ///  New human label.
    String? label;
    ///  New HTTPS endpoint URL.
    String? url;
    /// Instantiates a new [UpdateWebhookBody] and sets the default values.
    UpdateWebhookBody() :
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateWebhookBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateWebhookBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['events'] = (node) => events = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['isActive'] = (node) => isActive = node.getBoolValue();
        deserializerMap['label'] = (node) => label = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('events', events);
        writer.writeBoolValue('isActive', value:isActive);
        writer.writeStringValue('label', label);
        writer.writeStringValue('url', url);
        writer.writeAdditionalData(additionalData);
    }
}
