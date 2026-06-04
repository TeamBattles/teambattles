// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game.dart';
import './match_status.dart';
import './team.dart';
import './user_match_completed_at.dart';
import './user_match_scheduled_at.dart';
import './user_match_started_at.dart';

/// auto generated
/// Match as returned by the user/team/org match-listing endpoints.
class UserMatch implements Parsable {
    ///  The acceptedTeam property
    Team? acceptedTeam;
    ///  Number of maps in the series (1, 3, 5, or 7).
    int? bestOf;
    ///  Completion time (ISO 8601).
    UserMatchCompletedAt? completedAt;
    ///  The creatorTeam property
    Team? creatorTeam;
    ///  Game definition.
    Game? game;
    ///  Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
    String? gameMode;
    ///  The id property
    String? id;
    ///  Scheduled start time (ISO 8601).
    UserMatchScheduledAt? scheduledAt;
    ///  Actual start time (ISO 8601).
    UserMatchStartedAt? startedAt;
    ///  Lifecycle status of a match.
    MatchStatus? status;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UserMatch createFromDiscriminatorValue(ParseNode parseNode) {
        return UserMatch();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptedTeam'] = (node) => acceptedTeam = node.getObjectValue<Team>(Team.createFromDiscriminatorValue);
        deserializerMap['bestOf'] = (node) => bestOf = node.getIntValue();
        deserializerMap['completedAt'] = (node) => completedAt = node.getObjectValue<UserMatchCompletedAt>(UserMatchCompletedAt.createFromDiscriminatorValue);
        deserializerMap['creatorTeam'] = (node) => creatorTeam = node.getObjectValue<Team>(Team.createFromDiscriminatorValue);
        deserializerMap['game'] = (node) => game = node.getObjectValue<Game>(Game.createFromDiscriminatorValue);
        deserializerMap['gameMode'] = (node) => gameMode = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getObjectValue<UserMatchScheduledAt>(UserMatchScheduledAt.createFromDiscriminatorValue);
        deserializerMap['startedAt'] = (node) => startedAt = node.getObjectValue<UserMatchStartedAt>(UserMatchStartedAt.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getEnumValue<MatchStatus>((stringValue) => MatchStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<Team>('acceptedTeam', acceptedTeam);
        writer.writeIntValue('bestOf', bestOf);
        writer.writeObjectValue<UserMatchCompletedAt>('completedAt', completedAt);
        writer.writeObjectValue<Team>('creatorTeam', creatorTeam);
        writer.writeObjectValue<Game>('game', game);
        writer.writeStringValue('gameMode', gameMode);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<UserMatchScheduledAt>('scheduledAt', scheduledAt);
        writer.writeObjectValue<UserMatchStartedAt>('startedAt', startedAt);
        writer.writeEnumValue<MatchStatus>('status', status, (e) => e?.value);
    }
}
