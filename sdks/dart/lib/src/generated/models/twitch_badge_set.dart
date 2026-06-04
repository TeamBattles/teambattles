// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_badge_version.dart';

/// auto generated
/// A set of related Twitch chat badge versions.
class TwitchBadgeSet implements Parsable {
    ///  Badge set identifier (e.g. subscriber, moderator).
    String? setId;
    ///  Available versions within this badge set.
    Iterable<TwitchBadgeVersion>? versions;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchBadgeSet createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchBadgeSet();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['set_id'] = (node) => setId = node.getStringValue();
        deserializerMap['versions'] = (node) => versions = node.getCollectionOfObjectValues<TwitchBadgeVersion>(TwitchBadgeVersion.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('set_id', setId);
        writer.writeCollectionOfObjectValues<TwitchBadgeVersion>('versions', versions);
    }
}
