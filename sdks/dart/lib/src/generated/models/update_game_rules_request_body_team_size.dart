// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class UpdateGameRulesRequestBodyTeamSize implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The max property
    double? max;
    ///  The min property
    double? min;
    /// Instantiates a new [UpdateGameRulesRequestBodyTeamSize] and sets the default values.
    UpdateGameRulesRequestBodyTeamSize() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateGameRulesRequestBodyTeamSize createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateGameRulesRequestBodyTeamSize();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['max'] = (node) => max = node.getDoubleValue();
        deserializerMap['min'] = (node) => min = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('max', max);
        writer.writeDoubleValue('min', min);
        writer.writeAdditionalData(additionalData);
    }
}
