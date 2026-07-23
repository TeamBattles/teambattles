// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Competitor roster addition payload.
class TournamentTeamRosterAddBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  User ID of the member to add to YOUR team's tournament roster. The participant is resolved from the team in the path and is never supplied in the body.
    String? userId;
    /// Instantiates a new [TournamentTeamRosterAddBody] and sets the default values.
    TournamentTeamRosterAddBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentTeamRosterAddBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentTeamRosterAddBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('userId', userId);
        writer.writeAdditionalData(additionalData);
    }
}
