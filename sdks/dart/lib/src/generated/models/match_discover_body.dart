// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './match_discover_body_cursor.dart';
import './match_discover_body_match_type.dart';
import './match_discover_body_platform.dart';
import './match_discover_body_region.dart';

/// auto generated
/// Filters and cursor pagination for public open-match discovery.
class MatchDiscoverBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The cursor property
    MatchDiscoverBodyCursor? cursor;
    ///  The gameId property
    String? gameId;
    ///  The gameSlug property
    String? gameSlug;
    ///  The leagueId property
    String? leagueId;
    ///  The leagueSeasonId property
    String? leagueSeasonId;
    ///  The limit property
    int? limit;
    ///  The matchType property
    MatchDiscoverBodyMatchType? matchType;
    ///  The platform property
    MatchDiscoverBodyPlatform? platform;
    ///  The region property
    MatchDiscoverBodyRegion? region;
    ///  The scheduledAfter property
    String? scheduledAfter;
    ///  The scheduledBefore property
    String? scheduledBefore;
    /// Instantiates a new [MatchDiscoverBody] and sets the default values.
    MatchDiscoverBody() :  
        additionalData = {},
        limit = 50;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchDiscoverBody createFromDiscriminatorValue(ParseNode parseNode) {
        return MatchDiscoverBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['cursor'] = (node) => cursor = node.getObjectValue<MatchDiscoverBodyCursor>(MatchDiscoverBodyCursor.createFromDiscriminatorValue);
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['gameSlug'] = (node) => gameSlug = node.getStringValue();
        deserializerMap['leagueId'] = (node) => leagueId = node.getStringValue();
        deserializerMap['leagueSeasonId'] = (node) => leagueSeasonId = node.getStringValue();
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['matchType'] = (node) => matchType = node.getEnumValue<MatchDiscoverBodyMatchType>((stringValue) => MatchDiscoverBodyMatchType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['platform'] = (node) => platform = node.getEnumValue<MatchDiscoverBodyPlatform>((stringValue) => MatchDiscoverBodyPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['region'] = (node) => region = node.getEnumValue<MatchDiscoverBodyRegion>((stringValue) => MatchDiscoverBodyRegion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['scheduledAfter'] = (node) => scheduledAfter = node.getStringValue();
        deserializerMap['scheduledBefore'] = (node) => scheduledBefore = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<MatchDiscoverBodyCursor>('cursor', cursor);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('gameSlug', gameSlug);
        writer.writeStringValue('leagueId', leagueId);
        writer.writeStringValue('leagueSeasonId', leagueSeasonId);
        writer.writeIntValue('limit', limit);
        writer.writeEnumValue<MatchDiscoverBodyMatchType>('matchType', matchType, (e) => e?.value);
        writer.writeEnumValue<MatchDiscoverBodyPlatform>('platform', platform, (e) => e?.value);
        writer.writeEnumValue<MatchDiscoverBodyRegion>('region', region, (e) => e?.value);
        writer.writeStringValue('scheduledAfter', scheduledAfter);
        writer.writeStringValue('scheduledBefore', scheduledBefore);
        writer.writeAdditionalData(additionalData);
    }
}
