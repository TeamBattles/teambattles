// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Free-agent pool listing payload for the API key owner.
class TournamentFreeAgencyJoinBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional public note shown to captains browsing the pool - roles played, availability, and so on.
    String? note;
    /// Instantiates a new [TournamentFreeAgencyJoinBody] and sets the default values.
    TournamentFreeAgencyJoinBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFreeAgencyJoinBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentFreeAgencyJoinBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['note'] = (node) => note = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('note', note);
        writer.writeAdditionalData(additionalData);
    }
}
