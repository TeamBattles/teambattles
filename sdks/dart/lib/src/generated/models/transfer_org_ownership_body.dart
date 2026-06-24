// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Transfer organization ownership to another member.
class TransferOrgOwnershipBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Convex user ID of the active organization member to promote to owner.
    String? newOwnerId;
    /// Instantiates a new [TransferOrgOwnershipBody] and sets the default values.
    TransferOrgOwnershipBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferOrgOwnershipBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferOrgOwnershipBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['newOwnerId'] = (node) => newOwnerId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('newOwnerId', newOwnerId);
        writer.writeAdditionalData(additionalData);
    }
}
