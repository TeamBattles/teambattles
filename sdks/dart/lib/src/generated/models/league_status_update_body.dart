// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Request body for updating a league match's lifecycle status.
class LeagueStatusUpdateBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Target status. Allowed league transitions: READY -> IN_PROGRESS|CANCELLED, ACCEPTED -> CANCELLED. COMPLETED is not accepted directly; matches complete automatically once scores are confirmed.
    String? status;
    /// Instantiates a new [LeagueStatusUpdateBody] and sets the default values.
    LeagueStatusUpdateBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueStatusUpdateBody createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueStatusUpdateBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['status'] = (node) => status = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('status', status);
        writer.writeAdditionalData(additionalData);
    }
}
