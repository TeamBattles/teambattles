// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Game rules and points config for a league.
class LeagueRules implements Parsable {
    ///  Points configuration document for the league + game, or null if unset.
    UntypedNode? pointsConfig;
    ///  Game rules document for the league + game, or null if unset.
    UntypedNode? rules;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueRules createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueRules();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['pointsConfig'] = (node) => pointsConfig = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['rules'] = (node) => rules = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<UntypedNode>('pointsConfig', pointsConfig);
        writer.writeObjectValue<UntypedNode>('rules', rules);
        writer.writeStringValue('timestamp', timestamp);
    }
}
