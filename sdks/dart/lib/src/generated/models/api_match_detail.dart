// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_detail_completed_at.dart';
import './api_match_detail_created_at.dart';
import './api_match_detail_league_id.dart';
import './api_match_detail_league_season_id.dart';
import './api_match_detail_match_type.dart';
import './api_match_detail_platform.dart';
import './api_match_detail_region.dart';
import './api_match_detail_scheduled_at.dart';
import './api_match_detail_started_at.dart';
import './api_match_detail_winner_team_id.dart';
import './api_match_team.dart';
import './game.dart';
import './match_status.dart';

/// auto generated
/// Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
class ApiMatchDetail implements Parsable {
    ///  The acceptedTeam property
    ApiMatchTeam? acceptedTeam;
    ///  The bestOf property
    int? bestOf;
    ///  The challengedTeam property
    ApiMatchTeam? challengedTeam;
    ///  The completedAt property
    ApiMatchDetailCompletedAt? completedAt;
    ///  The createdAt property
    ApiMatchDetailCreatedAt? createdAt;
    ///  The creatorTeam property
    ApiMatchTeam? creatorTeam;
    ///  Game definition.
    Game? game;
    ///  The gameMode property
    String? gameMode;
    ///  The id property
    String? id;
    ///  The leagueId property
    ApiMatchDetailLeagueId? leagueId;
    ///  The leagueSeasonId property
    ApiMatchDetailLeagueSeasonId? leagueSeasonId;
    ///  The matchType property
    ApiMatchDetailMatchType? matchType;
    ///  The platform property
    ApiMatchDetailPlatform? platform;
    ///  The publishStatus property
    String? publishStatus;
    ///  The region property
    ApiMatchDetailRegion? region;
    ///  The scheduledAt property
    ApiMatchDetailScheduledAt? scheduledAt;
    ///  The selectedMaps property
    Iterable<String>? selectedMaps;
    ///  The selectedObjectives property
    Iterable<String>? selectedObjectives;
    ///  The startedAt property
    ApiMatchDetailStartedAt? startedAt;
    ///  Lifecycle status of a match.
    MatchStatus? status;
    ///  The teamSize property
    int? teamSize;
    ///  The winnerTeamId property
    ApiMatchDetailWinnerTeamId? winnerTeamId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMatchDetail createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiMatchDetail();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptedTeam'] = (node) => acceptedTeam = node.getObjectValue<ApiMatchTeam>(ApiMatchTeam.createFromDiscriminatorValue);
        deserializerMap['bestOf'] = (node) => bestOf = node.getIntValue();
        deserializerMap['challengedTeam'] = (node) => challengedTeam = node.getObjectValue<ApiMatchTeam>(ApiMatchTeam.createFromDiscriminatorValue);
        deserializerMap['completedAt'] = (node) => completedAt = node.getObjectValue<ApiMatchDetailCompletedAt>(ApiMatchDetailCompletedAt.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ApiMatchDetailCreatedAt>(ApiMatchDetailCreatedAt.createFromDiscriminatorValue);
        deserializerMap['creatorTeam'] = (node) => creatorTeam = node.getObjectValue<ApiMatchTeam>(ApiMatchTeam.createFromDiscriminatorValue);
        deserializerMap['game'] = (node) => game = node.getObjectValue<Game>(Game.createFromDiscriminatorValue);
        deserializerMap['gameMode'] = (node) => gameMode = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['leagueId'] = (node) => leagueId = node.getObjectValue<ApiMatchDetailLeagueId>(ApiMatchDetailLeagueId.createFromDiscriminatorValue);
        deserializerMap['leagueSeasonId'] = (node) => leagueSeasonId = node.getObjectValue<ApiMatchDetailLeagueSeasonId>(ApiMatchDetailLeagueSeasonId.createFromDiscriminatorValue);
        deserializerMap['matchType'] = (node) => matchType = node.getObjectValue<ApiMatchDetailMatchType>(ApiMatchDetailMatchType.createFromDiscriminatorValue);
        deserializerMap['platform'] = (node) => platform = node.getObjectValue<ApiMatchDetailPlatform>(ApiMatchDetailPlatform.createFromDiscriminatorValue);
        deserializerMap['publishStatus'] = (node) => publishStatus = node.getStringValue();
        deserializerMap['region'] = (node) => region = node.getObjectValue<ApiMatchDetailRegion>(ApiMatchDetailRegion.createFromDiscriminatorValue);
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getObjectValue<ApiMatchDetailScheduledAt>(ApiMatchDetailScheduledAt.createFromDiscriminatorValue);
        deserializerMap['selectedMaps'] = (node) => selectedMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['selectedObjectives'] = (node) => selectedObjectives = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['startedAt'] = (node) => startedAt = node.getObjectValue<ApiMatchDetailStartedAt>(ApiMatchDetailStartedAt.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getEnumValue<MatchStatus>((stringValue) => MatchStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamSize'] = (node) => teamSize = node.getIntValue();
        deserializerMap['winnerTeamId'] = (node) => winnerTeamId = node.getObjectValue<ApiMatchDetailWinnerTeamId>(ApiMatchDetailWinnerTeamId.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiMatchTeam>('acceptedTeam', acceptedTeam);
        writer.writeIntValue('bestOf', bestOf);
        writer.writeObjectValue<ApiMatchTeam>('challengedTeam', challengedTeam);
        writer.writeObjectValue<ApiMatchDetailCompletedAt>('completedAt', completedAt);
        writer.writeObjectValue<ApiMatchDetailCreatedAt>('createdAt', createdAt);
        writer.writeObjectValue<ApiMatchTeam>('creatorTeam', creatorTeam);
        writer.writeObjectValue<Game>('game', game);
        writer.writeStringValue('gameMode', gameMode);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiMatchDetailLeagueId>('leagueId', leagueId);
        writer.writeObjectValue<ApiMatchDetailLeagueSeasonId>('leagueSeasonId', leagueSeasonId);
        writer.writeObjectValue<ApiMatchDetailMatchType>('matchType', matchType);
        writer.writeObjectValue<ApiMatchDetailPlatform>('platform', platform);
        writer.writeStringValue('publishStatus', publishStatus);
        writer.writeObjectValue<ApiMatchDetailRegion>('region', region);
        writer.writeObjectValue<ApiMatchDetailScheduledAt>('scheduledAt', scheduledAt);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedMaps', selectedMaps);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedObjectives', selectedObjectives);
        writer.writeObjectValue<ApiMatchDetailStartedAt>('startedAt', startedAt);
        writer.writeEnumValue<MatchStatus>('status', status, (e) => e?.value);
        writer.writeIntValue('teamSize', teamSize);
        writer.writeObjectValue<ApiMatchDetailWinnerTeamId>('winnerTeamId', winnerTeamId);
    }
}
