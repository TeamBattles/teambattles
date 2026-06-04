// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_channel_badges_broadcaster_id_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TwitchChannelBadgesBroadcasterIdMember1]
class TwitchChannelBadgesBroadcasterId implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TwitchChannelBadgesBroadcasterIdMember1]
    TwitchChannelBadgesBroadcasterIdMember1? twitchChannelBadgesBroadcasterIdMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchChannelBadgesBroadcasterId createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TwitchChannelBadgesBroadcasterId();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.twitchChannelBadgesBroadcasterIdMember1 = TwitchChannelBadgesBroadcasterIdMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(twitchChannelBadgesBroadcasterIdMember1 != null){twitchChannelBadgesBroadcasterIdMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<TwitchChannelBadgesBroadcasterIdMember1>(null, twitchChannelBadgesBroadcasterIdMember1);
        }
    }
}
