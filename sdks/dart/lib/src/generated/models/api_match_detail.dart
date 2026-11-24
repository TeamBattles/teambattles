// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
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
    String? completedAt;
    ///  The createdAt property
    String? createdAt;
    ///  The creatorTeam property
    ApiMatchTeam? creatorTeam;
    ///  Game definition.
    Game? game;
    ///  The gameMode property
    String? gameMode;
    ///  The id property
    String? id;
    ///  The leagueId property
    String? leagueId;
    ///  The leagueSeasonId property
    String? leagueSeasonId;
    ///  The matchType property
    String? matchType;
    ///  The platform property
    String? platform;
    ///  The publishStatus property
    String? publishStatus;
    ///  The region property
    String? region;
    ///  The scheduledAt property
    String? scheduledAt;
    ///  The selectedMaps property
    Iterable<String>? selectedMaps;
    ///  The selectedObjectives property
    Iterable<String>? selectedObjectives;
    ///  The startedAt property
    String? startedAt;
    ///  Lifecycle status of a match.
    MatchStatus? status;
    ///  The teamSize property
    int? teamSize;
    ///  The winnerTeamId property
    String? winnerTeamId;
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
        deserializerMap['completedAt'] = (node) => completedAt = node.getStringValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getStringValue();
        deserializerMap['creatorTeam'] = (node) => creatorTeam = node.getObjectValue<ApiMatchTeam>(ApiMatchTeam.createFromDiscriminatorValue);
        deserializerMap['game'] = (node) => game = node.getObjectValue<Game>(Game.createFromDiscriminatorValue);
        deserializerMap['gameMode'] = (node) => gameMode = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['leagueId'] = (node) => leagueId = node.getStringValue();
        deserializerMap['leagueSeasonId'] = (node) => leagueSeasonId = node.getStringValue();
        deserializerMap['matchType'] = (node) => matchType = node.getStringValue();
        deserializerMap['platform'] = (node) => platform = node.getStringValue();
        deserializerMap['publishStatus'] = (node) => publishStatus = node.getStringValue();
        deserializerMap['region'] = (node) => region = node.getStringValue();
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getStringValue();
        deserializerMap['selectedMaps'] = (node) => selectedMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['selectedObjectives'] = (node) => selectedObjectives = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['startedAt'] = (node) => startedAt = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<MatchStatus>((stringValue) => MatchStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamSize'] = (node) => teamSize = node.getIntValue();
        deserializerMap['winnerTeamId'] = (node) => winnerTeamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiMatchTeam>('acceptedTeam', acceptedTeam);
        writer.writeIntValue('bestOf', bestOf);
        writer.writeObjectValue<ApiMatchTeam>('challengedTeam', challengedTeam);
        writer.writeStringValue('completedAt', completedAt);
        writer.writeStringValue('createdAt', createdAt);
        writer.writeObjectValue<ApiMatchTeam>('creatorTeam', creatorTeam);
        writer.writeObjectValue<Game>('game', game);
        writer.writeStringValue('gameMode', gameMode);
        writer.writeStringValue('id', id);
        writer.writeStringValue('leagueId', leagueId);
        writer.writeStringValue('leagueSeasonId', leagueSeasonId);
        writer.writeStringValue('matchType', matchType);
        writer.writeStringValue('platform', platform);
        writer.writeStringValue('publishStatus', publishStatus);
        writer.writeStringValue('region', region);
        writer.writeStringValue('scheduledAt', scheduledAt);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedMaps', selectedMaps);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedObjectives', selectedObjectives);
        writer.writeStringValue('startedAt', startedAt);
        writer.writeEnumValue<MatchStatus>('status', status, (e) => e?.value);
        writer.writeIntValue('teamSize', teamSize);
        writer.writeStringValue('winnerTeamId', winnerTeamId);
    }
}
