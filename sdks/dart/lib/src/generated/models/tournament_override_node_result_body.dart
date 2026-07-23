// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Bracket node result override payload.
class TournamentOverrideNodeResultBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Score for the node's first entrant.
    int? score1;
    ///  Score for the node's second entrant.
    int? score2;
    /// Instantiates a new [TournamentOverrideNodeResultBody] and sets the default values.
    TournamentOverrideNodeResultBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentOverrideNodeResultBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentOverrideNodeResultBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['score1'] = (node) => score1 = node.getIntValue();
        deserializerMap['score2'] = (node) => score2 = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('score1', score1);
        writer.writeIntValue('score2', score2);
        writer.writeAdditionalData(additionalData);
    }
}
