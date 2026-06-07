// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_catalog_entry_banner_image.dart';
import './api_game_catalog_entry_convex_id.dart';
import './api_game_catalog_entry_cover_image.dart';
import './api_game_catalog_entry_description_key.dart';
import './api_game_catalog_entry_rules_link.dart';
import './api_game_catalog_entry_short_name_key.dart';
import './api_game_map.dart';
import './api_game_mode.dart';
import './api_game_mode_map_pool.dart';
import './api_game_playlist.dart';

/// auto generated
/// Static public game catalog entry.
class ApiGameCatalogEntry implements Parsable {
    ///  The bannerImage property
    ApiGameCatalogEntryBannerImage? bannerImage;
    ///  The category property
    String? category;
    ///  Active Convex games-table ID, when available for match APIs.
    ApiGameCatalogEntryConvexId? convexId;
    ///  The coverImage property
    ApiGameCatalogEntryCoverImage? coverImage;
    ///  The defaultTeamSize property
    int? defaultTeamSize;
    ///  The descriptionKey property
    ApiGameCatalogEntryDescriptionKey? descriptionKey;
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
    ApiGameCatalogEntryRulesLink? rulesLink;
    ///  The shortNameKey property
    ApiGameCatalogEntryShortNameKey? shortNameKey;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameCatalogEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGameCatalogEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bannerImage'] = (node) => bannerImage = node.getObjectValue<ApiGameCatalogEntryBannerImage>(ApiGameCatalogEntryBannerImage.createFromDiscriminatorValue);
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['convexId'] = (node) => convexId = node.getObjectValue<ApiGameCatalogEntryConvexId>(ApiGameCatalogEntryConvexId.createFromDiscriminatorValue);
        deserializerMap['coverImage'] = (node) => coverImage = node.getObjectValue<ApiGameCatalogEntryCoverImage>(ApiGameCatalogEntryCoverImage.createFromDiscriminatorValue);
        deserializerMap['defaultTeamSize'] = (node) => defaultTeamSize = node.getIntValue();
        deserializerMap['descriptionKey'] = (node) => descriptionKey = node.getObjectValue<ApiGameCatalogEntryDescriptionKey>(ApiGameCatalogEntryDescriptionKey.createFromDiscriminatorValue);
        deserializerMap['hasCompetitiveMode'] = (node) => hasCompetitiveMode = node.getBoolValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isAvailableForMatchApi'] = (node) => isAvailableForMatchApi = node.getBoolValue();
        deserializerMap['isComingSoon'] = (node) => isComingSoon = node.getBoolValue();
        deserializerMap['maps'] = (node) => maps = node.getCollectionOfObjectValues<ApiGameMap>(ApiGameMap.createFromDiscriminatorValue);
        deserializerMap['modeMapPools'] = (node) => modeMapPools = node.getCollectionOfObjectValues<ApiGameModeMapPool>(ApiGameModeMapPool.createFromDiscriminatorValue);
        deserializerMap['modes'] = (node) => modes = node.getCollectionOfObjectValues<ApiGameMode>(ApiGameMode.createFromDiscriminatorValue);
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        deserializerMap['playlists'] = (node) => playlists = node.getCollectionOfObjectValues<ApiGamePlaylist>(ApiGamePlaylist.createFromDiscriminatorValue);
        deserializerMap['rulesLink'] = (node) => rulesLink = node.getObjectValue<ApiGameCatalogEntryRulesLink>(ApiGameCatalogEntryRulesLink.createFromDiscriminatorValue);
        deserializerMap['shortNameKey'] = (node) => shortNameKey = node.getObjectValue<ApiGameCatalogEntryShortNameKey>(ApiGameCatalogEntryShortNameKey.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiGameCatalogEntryBannerImage>('bannerImage', bannerImage);
        writer.writeStringValue('category', category);
        writer.writeObjectValue<ApiGameCatalogEntryConvexId>('convexId', convexId);
        writer.writeObjectValue<ApiGameCatalogEntryCoverImage>('coverImage', coverImage);
        writer.writeIntValue('defaultTeamSize', defaultTeamSize);
        writer.writeObjectValue<ApiGameCatalogEntryDescriptionKey>('descriptionKey', descriptionKey);
        writer.writeBoolValue('hasCompetitiveMode', value:hasCompetitiveMode);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isAvailableForMatchApi', value:isAvailableForMatchApi);
        writer.writeBoolValue('isComingSoon', value:isComingSoon);
        writer.writeCollectionOfObjectValues<ApiGameMap>('maps', maps);
        writer.writeCollectionOfObjectValues<ApiGameModeMapPool>('modeMapPools', modeMapPools);
        writer.writeCollectionOfObjectValues<ApiGameMode>('modes', modes);
        writer.writeStringValue('nameKey', nameKey);
        writer.writeCollectionOfObjectValues<ApiGamePlaylist>('playlists', playlists);
        writer.writeObjectValue<ApiGameCatalogEntryRulesLink>('rulesLink', rulesLink);
        writer.writeObjectValue<ApiGameCatalogEntryShortNameKey>('shortNameKey', shortNameKey);
    }
}
