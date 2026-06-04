// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Season and game filters for league standings.
class StandingsRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Filter standings to a specific game id.
    String? gameId;
    ///  Maximum number of teams to return (1-100). Defaults to 50.
    int? limit;
    ///  Filter standings to a specific season id.
    String? seasonId;
    /// Instantiates a new [StandingsRequestBody] and sets the default values.
    StandingsRequestBody() :  
        additionalData = {},
        limit = 50;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static StandingsRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return StandingsRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['seasonId'] = (node) => seasonId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeIntValue('limit', limit);
        writer.writeStringValue('seasonId', seasonId);
        writer.writeAdditionalData(additionalData);
    }
}
