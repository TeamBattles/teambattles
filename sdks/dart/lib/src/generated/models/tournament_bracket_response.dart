// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_bracket.dart';

/// auto generated
/// Tournament bracket response envelope.
class TournamentBracketResponse implements Parsable {
    ///  Rounds, nodes, and participant display data.
    TournamentBracket? bracket;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentBracketResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentBracketResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bracket'] = (node) => bracket = node.getObjectValue<TournamentBracket>(TournamentBracket.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentBracket>('bracket', bracket);
        writer.writeStringValue('timestamp', timestamp);
    }
}
