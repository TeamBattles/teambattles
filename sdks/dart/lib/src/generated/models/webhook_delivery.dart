// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_delivery_status.dart';
import './webhook_delivery_status_code.dart';

/// auto generated
/// A single webhook delivery-log row.
class WebhookDelivery implements Parsable {
    ///  Number of delivery attempts made.
    int? attemptCount;
    ///  Emit/creation epoch ms (retention key).
    double? createdAt;
    ///  Epoch ms of successful delivery, or null.
    double? deliveredAt;
    ///  Last error message, or null.
    String? errorMessage;
    ///  The delivered event name.
    String? event;
    ///  Delivery-log row id.
    String? id;
    ///  Stable evt_ id, reused across retries (idempotency key).
    String? idempotencyId;
    ///  True for test.ping deliveries.
    bool? isTest;
    ///  Epoch ms of the next scheduled retry, or null.
    double? nextAttemptAt;
    ///  Lifecycle status of one logical delivery (endpoint x idempotency id).
    WebhookDeliveryStatus? status;
    ///  Last HTTP response status, or null.
    WebhookDeliveryStatusCode? statusCode;
    ///  Last update epoch ms.
    double? updatedAt;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookDelivery createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookDelivery();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attemptCount'] = (node) => attemptCount = node.getIntValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['deliveredAt'] = (node) => deliveredAt = node.getDoubleValue();
        deserializerMap['errorMessage'] = (node) => errorMessage = node.getStringValue();
        deserializerMap['event'] = (node) => event = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['idempotencyId'] = (node) => idempotencyId = node.getStringValue();
        deserializerMap['isTest'] = (node) => isTest = node.getBoolValue();
        deserializerMap['nextAttemptAt'] = (node) => nextAttemptAt = node.getDoubleValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<WebhookDeliveryStatus>((stringValue) => WebhookDeliveryStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['statusCode'] = (node) => statusCode = node.getObjectValue<WebhookDeliveryStatusCode>(WebhookDeliveryStatusCode.createFromDiscriminatorValue);
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('attemptCount', attemptCount);
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeDoubleValue('deliveredAt', deliveredAt);
        writer.writeStringValue('errorMessage', errorMessage);
        writer.writeStringValue('event', event);
        writer.writeStringValue('id', id);
        writer.writeStringValue('idempotencyId', idempotencyId);
        writer.writeBoolValue('isTest', value:isTest);
        writer.writeDoubleValue('nextAttemptAt', nextAttemptAt);
        writer.writeEnumValue<WebhookDeliveryStatus>('status', status, (e) => e?.value);
        writer.writeObjectValue<WebhookDeliveryStatusCode>('statusCode', statusCode);
        writer.writeDoubleValue('updatedAt', updatedAt);
    }
}
