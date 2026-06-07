// ignore_for_file: type=lint
/// auto generated
///  Lifecycle status of one logical delivery (endpoint x idempotency id).
enum WebhookDeliveryStatus {
    pending('pending'),
    delivering('delivering'),
    delivered('delivered'),
    failed('failed'),
    deadLettered('dead_lettered');
    const WebhookDeliveryStatus(this.value);
    final String value;
}
