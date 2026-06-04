// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_badge_set.dart';

/// auto generated
/// Global Twitch chat badges.
class TwitchGlobalBadges implements Parsable {
    ///  Global Twitch chat badge sets.
    Iterable<TwitchBadgeSet>? badges;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchGlobalBadges createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchGlobalBadges();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['badges'] = (node) => badges = node.getCollectionOfObjectValues<TwitchBadgeSet>(TwitchBadgeSet.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<TwitchBadgeSet>('badges', badges);
        writer.writeStringValue('timestamp', timestamp);
    }
}
