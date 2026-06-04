// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_bans_bans.dart';

/// auto generated
/// Team bans for a league.
class LeagueBans implements Parsable {
    ///  Enriched team ban records with computed status.
    Iterable<LeagueBansBans>? bans;
    ///  Number of bans returned.
    int? count;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueBans createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueBans();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bans'] = (node) => bans = node.getCollectionOfObjectValues<LeagueBansBans>(LeagueBansBans.createFromDiscriminatorValue);
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<LeagueBansBans>('bans', bans);
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
    }
}
