// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_badge_set.dart';
import './twitch_channel_badges_broadcaster_id.dart';
import './twitch_channel_badges_broadcaster_name.dart';

/// auto generated
/// Channel-specific Twitch chat badges.
class TwitchChannelBadges implements Parsable {
    ///  Channel-specific Twitch chat badge sets.
    Iterable<TwitchBadgeSet>? badges;
    ///  Resolved broadcaster (channel) id.
    TwitchChannelBadgesBroadcasterId? broadcasterId;
    ///  Resolved broadcaster display name or login.
    TwitchChannelBadgesBroadcasterName? broadcasterName;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchChannelBadges createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchChannelBadges();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['badges'] = (node) => badges = node.getCollectionOfObjectValues<TwitchBadgeSet>(TwitchBadgeSet.createFromDiscriminatorValue);
        deserializerMap['broadcaster_id'] = (node) => broadcasterId = node.getObjectValue<TwitchChannelBadgesBroadcasterId>(TwitchChannelBadgesBroadcasterId.createFromDiscriminatorValue);
        deserializerMap['broadcaster_name'] = (node) => broadcasterName = node.getObjectValue<TwitchChannelBadgesBroadcasterName>(TwitchChannelBadgesBroadcasterName.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<TwitchBadgeSet>('badges', badges);
        writer.writeObjectValue<TwitchChannelBadgesBroadcasterId>('broadcaster_id', broadcasterId);
        writer.writeObjectValue<TwitchChannelBadgesBroadcasterName>('broadcaster_name', broadcasterName);
        writer.writeStringValue('timestamp', timestamp);
    }
}
