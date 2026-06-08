// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Batch live-status request body.
class ApiBatchStreamStatusBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  User IDs to look up (1-50).
    Iterable<String>? userIds;
    /// Instantiates a new [ApiBatchStreamStatusBody] and sets the default values.
    ApiBatchStreamStatusBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiBatchStreamStatusBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiBatchStreamStatusBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['userIds'] = (node) => userIds = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('userIds', userIds);
        writer.writeAdditionalData(additionalData);
    }
}
