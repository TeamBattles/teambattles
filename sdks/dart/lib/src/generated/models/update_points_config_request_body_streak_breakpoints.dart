// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class UpdatePointsConfigRequestBodyStreakBreakpoints implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The bonus property
    double? bonus;
    ///  The count property
    double? count;
    /// Instantiates a new [UpdatePointsConfigRequestBodyStreakBreakpoints] and sets the default values.
    UpdatePointsConfigRequestBodyStreakBreakpoints() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdatePointsConfigRequestBodyStreakBreakpoints createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdatePointsConfigRequestBodyStreakBreakpoints();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bonus'] = (node) => bonus = node.getDoubleValue();
        deserializerMap['count'] = (node) => count = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('bonus', bonus);
        writer.writeDoubleValue('count', count);
        writer.writeAdditionalData(additionalData);
    }
}
