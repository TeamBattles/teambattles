// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Optional team-specific league application eligibility selector.
class LeagueApplyEligibilityRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional team ID to check. The API key owner must lead it.
    String? teamId;
    /// Instantiates a new [LeagueApplyEligibilityRequestBody] and sets the default values.
    LeagueApplyEligibilityRequestBody() :
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueApplyEligibilityRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueApplyEligibilityRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('teamId', teamId);
        writer.writeAdditionalData(additionalData);
    }
}
