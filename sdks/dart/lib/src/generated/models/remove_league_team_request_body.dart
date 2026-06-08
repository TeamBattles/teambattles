// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Removes an approved team from a league.
class RemoveLeagueTeamRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional removal reason shown to the team's captain.
    String? reason;
    /// Instantiates a new [RemoveLeagueTeamRequestBody] and sets the default values.
    RemoveLeagueTeamRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RemoveLeagueTeamRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveLeagueTeamRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('reason', reason);
        writer.writeAdditionalData(additionalData);
    }
}
