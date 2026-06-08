// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Toggles a league game.
class ToggleLeagueGameRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Whether the game should be active.
    bool? isActive;
    /// Instantiates a new [ToggleLeagueGameRequestBody] and sets the default values.
    ToggleLeagueGameRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ToggleLeagueGameRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ToggleLeagueGameRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['isActive'] = (node) => isActive = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('isActive', value:isActive);
        writer.writeAdditionalData(additionalData);
    }
}
