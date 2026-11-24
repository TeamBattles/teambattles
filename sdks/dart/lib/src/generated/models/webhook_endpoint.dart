// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_endpoint_scope_type.dart';

/// auto generated
/// A webhook endpoint (no secret material).
class WebhookEndpoint implements Parsable {
    ///  Creation epoch ms.
    double? createdAt;
    ///  Subscribed event tokens.
    Iterable<String>? events;
    ///  Consecutive dead-lettered deliveries (auto-disables at 50).
    int? failureCount;
    ///  Webhook endpoint id.
    String? id;
    ///  Whether the endpoint receives deliveries.
    bool? isActive;
    ///  Human label, or null.
    String? label;
    ///  Epoch ms of the last successful delivery, or null.
    double? lastDeliveredAt;
    ///  Epoch ms of the last failed delivery, or null.
    double? lastFailedAt;
    ///  Stringified bound scope id.
    String? scopeId;
    ///  The single scope dimension an endpoint is bound to.
    WebhookEndpointScopeType? scopeType;
    ///  First 8 chars of the current signing secret (display only).
    String? secretPrefix;
    ///  Last update epoch ms.
    double? updatedAt;
    ///  Delivery URL.
    String? url;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookEndpoint createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookEndpoint();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['events'] = (node) => events = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['failureCount'] = (node) => failureCount = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isActive'] = (node) => isActive = node.getBoolValue();
        deserializerMap['label'] = (node) => label = node.getStringValue();
        deserializerMap['lastDeliveredAt'] = (node) => lastDeliveredAt = node.getDoubleValue();
        deserializerMap['lastFailedAt'] = (node) => lastFailedAt = node.getDoubleValue();
        deserializerMap['scopeId'] = (node) => scopeId = node.getStringValue();
        deserializerMap['scopeType'] = (node) => scopeType = node.getEnumValue<WebhookEndpointScopeType>((stringValue) => WebhookEndpointScopeType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['secretPrefix'] = (node) => secretPrefix = node.getStringValue();
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getDoubleValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeCollectionOfPrimitiveValues<String?>('events', events);
        writer.writeIntValue('failureCount', failureCount);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isActive', value:isActive);
        writer.writeStringValue('label', label);
        writer.writeDoubleValue('lastDeliveredAt', lastDeliveredAt);
        writer.writeDoubleValue('lastFailedAt', lastFailedAt);
        writer.writeStringValue('scopeId', scopeId);
        writer.writeEnumValue<WebhookEndpointScopeType>('scopeType', scopeType, (e) => e?.value);
        writer.writeStringValue('secretPrefix', secretPrefix);
        writer.writeDoubleValue('updatedAt', updatedAt);
        writer.writeStringValue('url', url);
    }
}
