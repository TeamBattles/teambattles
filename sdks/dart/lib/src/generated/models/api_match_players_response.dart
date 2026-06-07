// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_player.dart';

/// auto generated
/// SP-2 match player rows response.
class ApiMatchPlayersResponse implements Parsable {
    ///  The matchId property
    String? matchId;
    ///  The players property
    Iterable<ApiMatchPlayer>? players;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMatchPlayersResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiMatchPlayersResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['matchId'] = (node) => matchId = node.getStringValue();
        deserializerMap['players'] = (node) => players = node.getCollectionOfObjectValues<ApiMatchPlayer>(ApiMatchPlayer.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('matchId', matchId);
        writer.writeCollectionOfObjectValues<ApiMatchPlayer>('players', players);
        writer.writeStringValue('timestamp', timestamp);
    }
}
