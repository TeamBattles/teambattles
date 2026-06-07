// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Request body for forfeiting a match on behalf of one participating team.
class GameForfeitBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  ID of the team that forfeits. Must be a participant of the match.
    String? forfeitingTeamId;
    ///  Optional human-readable forfeit reason, recorded on the match.
    String? reason;
    /// Instantiates a new [GameForfeitBody] and sets the default values.
    GameForfeitBody() :
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameForfeitBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameForfeitBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['forfeitingTeamId'] = (node) => forfeitingTeamId = node.getStringValue();
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('forfeitingTeamId', forfeitingTeamId);
        writer.writeStringValue('reason', reason);
        writer.writeAdditionalData(additionalData);
    }
}
