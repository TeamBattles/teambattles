// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class UpdateGameRulesRequestBodyAllowedTimeRange implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The end property
    String? end;
    ///  The start property
    String? start;
    /// Instantiates a new [UpdateGameRulesRequestBodyAllowedTimeRange] and sets the default values.
    UpdateGameRulesRequestBodyAllowedTimeRange() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateGameRulesRequestBodyAllowedTimeRange createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateGameRulesRequestBodyAllowedTimeRange();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['end'] = (node) => end = node.getStringValue();
        deserializerMap['start'] = (node) => start = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('end', end);
        writer.writeStringValue('start', start);
        writer.writeAdditionalData(additionalData);
    }
}
