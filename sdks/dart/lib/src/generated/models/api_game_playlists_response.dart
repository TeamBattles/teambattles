// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_catalog_entry.dart';
import './api_game_playlist.dart';

/// auto generated
/// Game-scoped playlist response.
class ApiGamePlaylistsResponse implements Parsable {
    ///  Static public game catalog entry.
    ApiGameCatalogEntry? game;
    ///  The playlists property
    Iterable<ApiGamePlaylist>? playlists;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGamePlaylistsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGamePlaylistsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['game'] = (node) => game = node.getObjectValue<ApiGameCatalogEntry>(ApiGameCatalogEntry.createFromDiscriminatorValue);
        deserializerMap['playlists'] = (node) => playlists = node.getCollectionOfObjectValues<ApiGamePlaylist>(ApiGamePlaylist.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiGameCatalogEntry>('game', game);
        writer.writeCollectionOfObjectValues<ApiGamePlaylist>('playlists', playlists);
        writer.writeStringValue('timestamp', timestamp);
    }
}
