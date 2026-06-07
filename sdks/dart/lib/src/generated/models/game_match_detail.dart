// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_detail_team.dart';
import './game_match_detail_accepted_team_score.dart';
import './game_match_detail_completed_at.dart';
import './game_match_detail_created_at.dart';
import './game_match_detail_creator_team_score.dart';
import './game_match_detail_league_id.dart';
import './game_match_detail_league_season_id.dart';
import './game_match_detail_loser_team_id.dart';
import './game_match_detail_scheduled_at.dart';
import './game_match_detail_started_at.dart';
import './game_match_detail_winner_team_id.dart';
import './match_status.dart';

/// auto generated
/// Detailed match payload returned inside the game-developer match-detail response.
class GameMatchDetail implements Parsable {
    ///  The acceptedTeam property
    GameDetailTeam? acceptedTeam;
    ///  The acceptedTeamScore property
    GameMatchDetailAcceptedTeamScore? acceptedTeamScore;
    ///  Number of maps in the series (1, 3, 5, or 7).
    int? bestOf;
    ///  Completion time (ISO 8601).
    GameMatchDetailCompletedAt? completedAt;
    ///  Creation time (ISO 8601).
    GameMatchDetailCreatedAt? createdAt;
    ///  The creatorTeam property
    GameDetailTeam? creatorTeam;
    ///  The creatorTeamScore property
    GameMatchDetailCreatorTeamScore? creatorTeamScore;
    ///  Game ID the match belongs to.
    String? gameId;
    ///  Game mode identifier (from the match's gameModeId).
    String? gameMode;
    ///  The id property
    String? id;
    ///  League this match belongs to, if any (SP-7 league wave).
    GameMatchDetailLeagueId? leagueId;
    ///  League season this match belongs to, if any.
    GameMatchDetailLeagueSeasonId? leagueSeasonId;
    ///  Losing team ID once the match completes.
    GameMatchDetailLoserTeamId? loserTeamId;
    ///  Scheduled start time (ISO 8601).
    GameMatchDetailScheduledAt? scheduledAt;
    ///  Actual start time (ISO 8601).
    GameMatchDetailStartedAt? startedAt;
    ///  Lifecycle status of a match.
    MatchStatus? status;
    ///  Winning team ID once the match completes.
    GameMatchDetailWinnerTeamId? winnerTeamId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchDetail createFromDiscriminatorValue(ParseNode parseNode) {
        return GameMatchDetail();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptedTeam'] = (node) => acceptedTeam = node.getObjectValue<GameDetailTeam>(GameDetailTeam.createFromDiscriminatorValue);
        deserializerMap['acceptedTeamScore'] = (node) => acceptedTeamScore = node.getObjectValue<GameMatchDetailAcceptedTeamScore>(GameMatchDetailAcceptedTeamScore.createFromDiscriminatorValue);
        deserializerMap['bestOf'] = (node) => bestOf = node.getIntValue();
        deserializerMap['completedAt'] = (node) => completedAt = node.getObjectValue<GameMatchDetailCompletedAt>(GameMatchDetailCompletedAt.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<GameMatchDetailCreatedAt>(GameMatchDetailCreatedAt.createFromDiscriminatorValue);
        deserializerMap['creatorTeam'] = (node) => creatorTeam = node.getObjectValue<GameDetailTeam>(GameDetailTeam.createFromDiscriminatorValue);
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getObjectValue<GameMatchDetailCreatorTeamScore>(GameMatchDetailCreatorTeamScore.createFromDiscriminatorValue);
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['gameMode'] = (node) => gameMode = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['leagueId'] = (node) => leagueId = node.getObjectValue<GameMatchDetailLeagueId>(GameMatchDetailLeagueId.createFromDiscriminatorValue);
        deserializerMap['leagueSeasonId'] = (node) => leagueSeasonId = node.getObjectValue<GameMatchDetailLeagueSeasonId>(GameMatchDetailLeagueSeasonId.createFromDiscriminatorValue);
        deserializerMap['loserTeamId'] = (node) => loserTeamId = node.getObjectValue<GameMatchDetailLoserTeamId>(GameMatchDetailLoserTeamId.createFromDiscriminatorValue);
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getObjectValue<GameMatchDetailScheduledAt>(GameMatchDetailScheduledAt.createFromDiscriminatorValue);
        deserializerMap['startedAt'] = (node) => startedAt = node.getObjectValue<GameMatchDetailStartedAt>(GameMatchDetailStartedAt.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getEnumValue<MatchStatus>((stringValue) => MatchStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['winnerTeamId'] = (node) => winnerTeamId = node.getObjectValue<GameMatchDetailWinnerTeamId>(GameMatchDetailWinnerTeamId.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<GameDetailTeam>('acceptedTeam', acceptedTeam);
        writer.writeObjectValue<GameMatchDetailAcceptedTeamScore>('acceptedTeamScore', acceptedTeamScore);
        writer.writeIntValue('bestOf', bestOf);
        writer.writeObjectValue<GameMatchDetailCompletedAt>('completedAt', completedAt);
        writer.writeObjectValue<GameMatchDetailCreatedAt>('createdAt', createdAt);
        writer.writeObjectValue<GameDetailTeam>('creatorTeam', creatorTeam);
        writer.writeObjectValue<GameMatchDetailCreatorTeamScore>('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('gameMode', gameMode);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<GameMatchDetailLeagueId>('leagueId', leagueId);
        writer.writeObjectValue<GameMatchDetailLeagueSeasonId>('leagueSeasonId', leagueSeasonId);
        writer.writeObjectValue<GameMatchDetailLoserTeamId>('loserTeamId', loserTeamId);
        writer.writeObjectValue<GameMatchDetailScheduledAt>('scheduledAt', scheduledAt);
        writer.writeObjectValue<GameMatchDetailStartedAt>('startedAt', startedAt);
        writer.writeEnumValue<MatchStatus>('status', status, (e) => e?.value);
        writer.writeObjectValue<GameMatchDetailWinnerTeamId>('winnerTeamId', winnerTeamId);
    }
}
