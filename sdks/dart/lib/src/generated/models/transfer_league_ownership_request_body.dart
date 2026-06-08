// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Transfers league ownership to an existing staff member.
class TransferLeagueOwnershipRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  User ID of the target league owner.
    String? targetUserId;
    /// Instantiates a new [TransferLeagueOwnershipRequestBody] and sets the default values.
    TransferLeagueOwnershipRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferLeagueOwnershipRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferLeagueOwnershipRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['targetUserId'] = (node) => targetUserId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('targetUserId', targetUserId);
        writer.writeAdditionalData(additionalData);
    }
}
