// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Approves a pending match acceptance as the API key owner.
class ApproveAcceptanceRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional list of available map IDs for the match.
    Iterable<String>? availableMaps;
    ///  Optional message sent to the accepting team.
    String? responseMessage;
    /// Instantiates a new [ApproveAcceptanceRequestBody] and sets the default values.
    ApproveAcceptanceRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApproveAcceptanceRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ApproveAcceptanceRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['availableMaps'] = (node) => availableMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['responseMessage'] = (node) => responseMessage = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('availableMaps', availableMaps);
        writer.writeStringValue('responseMessage', responseMessage);
        writer.writeAdditionalData(additionalData);
    }
}
