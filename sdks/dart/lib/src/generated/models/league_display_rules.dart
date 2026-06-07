// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_display_rules_display_rules.dart';

/// auto generated
/// League display rules.
class LeagueDisplayRules implements Parsable {
    ///  Number of display rules returned.
    int? count;
    ///  Display rule documents for the league game.
    Iterable<LeagueDisplayRulesDisplayRules>? displayRules;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueDisplayRules createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueDisplayRules();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['displayRules'] = (node) => displayRules = node.getCollectionOfObjectValues<LeagueDisplayRulesDisplayRules>(LeagueDisplayRulesDisplayRules.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeagueDisplayRulesDisplayRules>('displayRules', displayRules);
        writer.writeStringValue('timestamp', timestamp);
    }
}
