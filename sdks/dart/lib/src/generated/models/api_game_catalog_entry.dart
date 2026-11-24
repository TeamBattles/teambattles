// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_map.dart';
import './api_game_mode.dart';
import './api_game_mode_map_pool.dart';
import './api_game_playlist.dart';

/// auto generated
/// Static public game catalog entry.
class ApiGameCatalogEntry implements Parsable {
    ///  The bannerImage property
    String? bannerImage;
    ///  The category property
    String? category;
    ///  Active Convex games-table ID, when available for match APIs.
    String? convexId;
    ///  The coverImage property
    String? coverImage;
    ///  The defaultTeamSize property
    int? defaultTeamSize;
    ///  The descriptionKey property
    String? descriptionKey;
    ///  The hasCompetitiveMode property
    bool? hasCompetitiveMode;
    ///  Static public game ID/slug.
    String? id;
    ///  The isAvailableForMatchApi property
    bool? isAvailableForMatchApi;
    ///  The isComingSoon property
    bool? isComingSoon;
    ///  The maps property
    Iterable<ApiGameMap>? maps;
    ///  The modeMapPools property
    Iterable<ApiGameModeMapPool>? modeMapPools;
    ///  The modes property
    Iterable<ApiGameMode>? modes;
    ///  The nameKey property
    String? nameKey;
    ///  The playlists property
    Iterable<ApiGamePlaylist>? playlists;
    ///  The rulesLink property
    String? rulesLink;
    ///  The shortNameKey property
    String? shortNameKey;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameCatalogEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGameCatalogEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bannerImage'] = (node) => bannerImage = node.getStringValue();
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['convexId'] = (node) => convexId = node.getStringValue();
        deserializerMap['coverImage'] = (node) => coverImage = node.getStringValue();
        deserializerMap['defaultTeamSize'] = (node) => defaultTeamSize = node.getIntValue();
        deserializerMap['descriptionKey'] = (node) => descriptionKey = node.getStringValue();
        deserializerMap['hasCompetitiveMode'] = (node) => hasCompetitiveMode = node.getBoolValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isAvailableForMatchApi'] = (node) => isAvailableForMatchApi = node.getBoolValue();
        deserializerMap['isComingSoon'] = (node) => isComingSoon = node.getBoolValue();
        deserializerMap['maps'] = (node) => maps = node.getCollectionOfObjectValues<ApiGameMap>(ApiGameMap.createFromDiscriminatorValue);
        deserializerMap['modeMapPools'] = (node) => modeMapPools = node.getCollectionOfObjectValues<ApiGameModeMapPool>(ApiGameModeMapPool.createFromDiscriminatorValue);
        deserializerMap['modes'] = (node) => modes = node.getCollectionOfObjectValues<ApiGameMode>(ApiGameMode.createFromDiscriminatorValue);
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        deserializerMap['playlists'] = (node) => playlists = node.getCollectionOfObjectValues<ApiGamePlaylist>(ApiGamePlaylist.createFromDiscriminatorValue);
        deserializerMap['rulesLink'] = (node) => rulesLink = node.getStringValue();
        deserializerMap['shortNameKey'] = (node) => shortNameKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('bannerImage', bannerImage);
        writer.writeStringValue('category', category);
        writer.writeStringValue('convexId', convexId);
        writer.writeStringValue('coverImage', coverImage);
        writer.writeIntValue('defaultTeamSize', defaultTeamSize);
        writer.writeStringValue('descriptionKey', descriptionKey);
        writer.writeBoolValue('hasCompetitiveMode', value:hasCompetitiveMode);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isAvailableForMatchApi', value:isAvailableForMatchApi);
        writer.writeBoolValue('isComingSoon', value:isComingSoon);
        writer.writeCollectionOfObjectValues<ApiGameMap>('maps', maps);
        writer.writeCollectionOfObjectValues<ApiGameModeMapPool>('modeMapPools', modeMapPools);
        writer.writeCollectionOfObjectValues<ApiGameMode>('modes', modes);
        writer.writeStringValue('nameKey', nameKey);
        writer.writeCollectionOfObjectValues<ApiGamePlaylist>('playlists', playlists);
        writer.writeStringValue('rulesLink', rulesLink);
        writer.writeStringValue('shortNameKey', shortNameKey);
    }
}
