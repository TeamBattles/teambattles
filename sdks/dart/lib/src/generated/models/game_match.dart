// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_accepted_team_score.dart';
import './game_match_completed_at.dart';
import './game_match_created_at.dart';
import './game_match_creator_team_score.dart';
import './game_match_scheduled_at.dart';
import './game_match_started_at.dart';
import './match_status.dart';
import './team.dart';

/// auto generated
/// Match as returned by the game-developer endpoints (includes scores, omits the game object).
class GameMatch implements Parsable {
    ///  The acceptedTeam property
    Team? acceptedTeam;
    ///  The acceptedTeamScore property
    GameMatchAcceptedTeamScore? acceptedTeamScore;
    ///  Number of maps in the series (1, 3, 5, or 7).
    int? bestOf;
    ///  Completion time (ISO 8601).
    GameMatchCompletedAt? completedAt;
    ///  Creation time (ISO 8601).
    GameMatchCreatedAt? createdAt;
    ///  The creatorTeam property
    Team? creatorTeam;
    ///  The creatorTeamScore property
    GameMatchCreatorTeamScore? creatorTeamScore;
    ///  Game mode identifier (from the match's gameModeId).
    String? gameMode;
    ///  The id property
    String? id;
    ///  Scheduled start time (ISO 8601).
    GameMatchScheduledAt? scheduledAt;
    ///  Actual start time (ISO 8601).
    GameMatchStartedAt? startedAt;
    ///  Lifecycle status of a match.
    MatchStatus? status;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatch createFromDiscriminatorValue(ParseNode parseNode) {
        return GameMatch();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptedTeam'] = (node) => acceptedTeam = node.getObjectValue<Team>(Team.createFromDiscriminatorValue);
        deserializerMap['acceptedTeamScore'] = (node) => acceptedTeamScore = node.getObjectValue<GameMatchAcceptedTeamScore>(GameMatchAcceptedTeamScore.createFromDiscriminatorValue);
        deserializerMap['bestOf'] = (node) => bestOf = node.getIntValue();
        deserializerMap['completedAt'] = (node) => completedAt = node.getObjectValue<GameMatchCompletedAt>(GameMatchCompletedAt.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<GameMatchCreatedAt>(GameMatchCreatedAt.createFromDiscriminatorValue);
        deserializerMap['creatorTeam'] = (node) => creatorTeam = node.getObjectValue<Team>(Team.createFromDiscriminatorValue);
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getObjectValue<GameMatchCreatorTeamScore>(GameMatchCreatorTeamScore.createFromDiscriminatorValue);
        deserializerMap['gameMode'] = (node) => gameMode = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getObjectValue<GameMatchScheduledAt>(GameMatchScheduledAt.createFromDiscriminatorValue);
        deserializerMap['startedAt'] = (node) => startedAt = node.getObjectValue<GameMatchStartedAt>(GameMatchStartedAt.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getEnumValue<MatchStatus>((stringValue) => MatchStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<Team>('acceptedTeam', acceptedTeam);
        writer.writeObjectValue<GameMatchAcceptedTeamScore>('acceptedTeamScore', acceptedTeamScore);
        writer.writeIntValue('bestOf', bestOf);
        writer.writeObjectValue<GameMatchCompletedAt>('completedAt', completedAt);
        writer.writeObjectValue<GameMatchCreatedAt>('createdAt', createdAt);
        writer.writeObjectValue<Team>('creatorTeam', creatorTeam);
        writer.writeObjectValue<GameMatchCreatorTeamScore>('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('gameMode', gameMode);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<GameMatchScheduledAt>('scheduledAt', scheduledAt);
        writer.writeObjectValue<GameMatchStartedAt>('startedAt', startedAt);
        writer.writeEnumValue<MatchStatus>('status', status, (e) => e?.value);
    }
}
