// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Template filters.
class LeagueTemplatesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional game ID filter.
    String? gameId;
    ///  Optional official-template filter.
    bool? isOfficial;
    /// Instantiates a new [LeagueTemplatesRequestBody] and sets the default values.
    LeagueTemplatesRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueTemplatesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueTemplatesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['isOfficial'] = (node) => isOfficial = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeBoolValue('isOfficial', value:isOfficial);
        writer.writeAdditionalData(additionalData);
    }
}
