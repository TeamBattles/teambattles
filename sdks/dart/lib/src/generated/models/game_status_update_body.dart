// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Request body for updating a match's lifecycle status.
class GameStatusUpdateBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Target status. Allowed transitions: READY -> IN_PROGRESS, IN_PROGRESS -> COMPLETED|CANCELLED, ACCEPTED -> CANCELLED. COMPLETED is not accepted directly (matches complete automatically once scores are confirmed).
    String? status;
    /// Instantiates a new [GameStatusUpdateBody] and sets the default values.
    GameStatusUpdateBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameStatusUpdateBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameStatusUpdateBody();
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
