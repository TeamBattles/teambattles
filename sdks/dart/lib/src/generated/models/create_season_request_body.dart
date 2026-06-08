// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// League season creation payload.
class CreateSeasonRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Season end timestamp in milliseconds.
    double? endDate;
    ///  Game ID the season belongs to.
    String? gameId;
    ///  Season name.
    String? name;
    ///  Season start timestamp in milliseconds.
    double? startDate;
    /// Instantiates a new [CreateSeasonRequestBody] and sets the default values.
    CreateSeasonRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateSeasonRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateSeasonRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['endDate'] = (node) => endDate = node.getDoubleValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['startDate'] = (node) => startDate = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('endDate', endDate);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('name', name);
        writer.writeDoubleValue('startDate', startDate);
        writer.writeAdditionalData(additionalData);
    }
}
