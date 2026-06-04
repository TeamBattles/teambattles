// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_penalties_cooldowns.dart';
import './league_penalties_penalties.dart';

/// auto generated
/// Penalties and cooldowns for a league.
class LeaguePenalties implements Parsable {
    ///  Enriched member cooldown records (empty when type is penalties).
    Iterable<LeaguePenaltiesCooldowns>? cooldowns;
    ///  Combined number of penalties and cooldowns returned.
    int? count;
    ///  Enriched penalty records (empty when type is cooldowns).
    Iterable<LeaguePenaltiesPenalties>? penalties;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeaguePenalties createFromDiscriminatorValue(ParseNode parseNode) {
        return LeaguePenalties();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['cooldowns'] = (node) => cooldowns = node.getCollectionOfObjectValues<LeaguePenaltiesCooldowns>(LeaguePenaltiesCooldowns.createFromDiscriminatorValue);
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['penalties'] = (node) => penalties = node.getCollectionOfObjectValues<LeaguePenaltiesPenalties>(LeaguePenaltiesPenalties.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<LeaguePenaltiesCooldowns>('cooldowns', cooldowns);
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeaguePenaltiesPenalties>('penalties', penalties);
        writer.writeStringValue('timestamp', timestamp);
    }
}
