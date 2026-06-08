// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Updates league member cooldown configuration.
class UpdateLeagueCooldownConfigRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The kickCooldownHours property
    double? kickCooldownHours;
    ///  The maxCooldownHours property
    double? maxCooldownHours;
    ///  The repeatLeaveCooldownMultiplier property
    double? repeatLeaveCooldownMultiplier;
    ///  The repeatLeavePenaltyEnabled property
    bool? repeatLeavePenaltyEnabled;
    ///  The selfLeaveCooldownHours property
    double? selfLeaveCooldownHours;
    /// Instantiates a new [UpdateLeagueCooldownConfigRequestBody] and sets the default values.
    UpdateLeagueCooldownConfigRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateLeagueCooldownConfigRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateLeagueCooldownConfigRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['kickCooldownHours'] = (node) => kickCooldownHours = node.getDoubleValue();
        deserializerMap['maxCooldownHours'] = (node) => maxCooldownHours = node.getDoubleValue();
        deserializerMap['repeatLeaveCooldownMultiplier'] = (node) => repeatLeaveCooldownMultiplier = node.getDoubleValue();
        deserializerMap['repeatLeavePenaltyEnabled'] = (node) => repeatLeavePenaltyEnabled = node.getBoolValue();
        deserializerMap['selfLeaveCooldownHours'] = (node) => selfLeaveCooldownHours = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('kickCooldownHours', kickCooldownHours);
        writer.writeDoubleValue('maxCooldownHours', maxCooldownHours);
        writer.writeDoubleValue('repeatLeaveCooldownMultiplier', repeatLeaveCooldownMultiplier);
        writer.writeBoolValue('repeatLeavePenaltyEnabled', value:repeatLeavePenaltyEnabled);
        writer.writeDoubleValue('selfLeaveCooldownHours', selfLeaveCooldownHours);
        writer.writeAdditionalData(additionalData);
    }
}
