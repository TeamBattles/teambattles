// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Confirmation payload identifying the map score to confirm.
class ConfirmScoreBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Zero-based map index to confirm. Must be a non-negative integer.
    int? mapIndex;
    /// Instantiates a new [ConfirmScoreBody] and sets the default values.
    ConfirmScoreBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ConfirmScoreBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ConfirmScoreBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeAdditionalData(additionalData);
    }
}
