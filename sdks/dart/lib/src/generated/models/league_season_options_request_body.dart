// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Season option selector.
class LeagueSeasonOptionsRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Game ID to list season options for.
    String? gameId;
    /// Instantiates a new [LeagueSeasonOptionsRequestBody] and sets the default values.
    LeagueSeasonOptionsRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSeasonOptionsRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueSeasonOptionsRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeAdditionalData(additionalData);
    }
}
