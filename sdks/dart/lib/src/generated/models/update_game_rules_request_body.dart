// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_game_rules_request_body_allowed_time_range.dart';
import './update_game_rules_request_body_match_format.dart';
import './update_game_rules_request_body_roster_change_window_time.dart';
import './update_game_rules_request_body_team_size.dart';

/// auto generated
/// Updates league game rules.
class UpdateGameRulesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The allowedDays property
    Iterable<String>? allowedDays;
    ///  The allowedMapIds property
    Iterable<String>? allowedMapIds;
    ///  The allowedPlaylistIds property
    Iterable<String>? allowedPlaylistIds;
    ///  The allowedTimeRange property
    UpdateGameRulesRequestBodyAllowedTimeRange? allowedTimeRange;
    ///  The blockedDays property
    Iterable<String>? blockedDays;
    ///  The challengeCooldownMinutes property
    double? challengeCooldownMinutes;
    ///  The challengesEnabled property
    bool? challengesEnabled;
    ///  The forceCompetitive property
    bool? forceCompetitive;
    ///  Game ID whose league rules should change.
    String? gameId;
    ///  The matchFormat property
    UpdateGameRulesRequestBodyMatchFormat? matchFormat;
    ///  The maxChallengesPerTeamPerSeason property
    double? maxChallengesPerTeamPerSeason;
    ///  The maxPendingChallengesPerOpponent property
    double? maxPendingChallengesPerOpponent;
    ///  The maxPendingChallengesTotal property
    double? maxPendingChallengesTotal;
    ///  The maxPointsMatchesPerPairPer24h property
    double? maxPointsMatchesPerPairPer24h;
    ///  The maxRosterChangesPerWeek property
    double? maxRosterChangesPerWeek;
    ///  The maxRosterSize property
    double? maxRosterSize;
    ///  The maxWagerAmount property
    double? maxWagerAmount;
    ///  The minRosterSize property
    double? minRosterSize;
    ///  The minWagerAmount property
    double? minWagerAmount;
    ///  The rosterChangeWindowDays property
    Iterable<String>? rosterChangeWindowDays;
    ///  The rosterChangeWindowTime property
    UpdateGameRulesRequestBodyRosterChangeWindowTime? rosterChangeWindowTime;
    ///  The rosterLockEnabled property
    bool? rosterLockEnabled;
    ///  The teamSize property
    UpdateGameRulesRequestBodyTeamSize? teamSize;
    ///  The timezone property
    String? timezone;
    ///  The wagersAllowed property
    bool? wagersAllowed;
    /// Instantiates a new [UpdateGameRulesRequestBody] and sets the default values.
    UpdateGameRulesRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateGameRulesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateGameRulesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['allowedDays'] = (node) => allowedDays = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['allowedMapIds'] = (node) => allowedMapIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['allowedPlaylistIds'] = (node) => allowedPlaylistIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['allowedTimeRange'] = (node) => allowedTimeRange = node.getObjectValue<UpdateGameRulesRequestBodyAllowedTimeRange>(UpdateGameRulesRequestBodyAllowedTimeRange.createFromDiscriminatorValue);
        deserializerMap['blockedDays'] = (node) => blockedDays = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['challengeCooldownMinutes'] = (node) => challengeCooldownMinutes = node.getDoubleValue();
        deserializerMap['challengesEnabled'] = (node) => challengesEnabled = node.getBoolValue();
        deserializerMap['forceCompetitive'] = (node) => forceCompetitive = node.getBoolValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['matchFormat'] = (node) => matchFormat = node.getEnumValue<UpdateGameRulesRequestBodyMatchFormat>((stringValue) => UpdateGameRulesRequestBodyMatchFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['maxChallengesPerTeamPerSeason'] = (node) => maxChallengesPerTeamPerSeason = node.getDoubleValue();
        deserializerMap['maxPendingChallengesPerOpponent'] = (node) => maxPendingChallengesPerOpponent = node.getDoubleValue();
        deserializerMap['maxPendingChallengesTotal'] = (node) => maxPendingChallengesTotal = node.getDoubleValue();
        deserializerMap['maxPointsMatchesPerPairPer24h'] = (node) => maxPointsMatchesPerPairPer24h = node.getDoubleValue();
        deserializerMap['maxRosterChangesPerWeek'] = (node) => maxRosterChangesPerWeek = node.getDoubleValue();
        deserializerMap['maxRosterSize'] = (node) => maxRosterSize = node.getDoubleValue();
        deserializerMap['maxWagerAmount'] = (node) => maxWagerAmount = node.getDoubleValue();
        deserializerMap['minRosterSize'] = (node) => minRosterSize = node.getDoubleValue();
        deserializerMap['minWagerAmount'] = (node) => minWagerAmount = node.getDoubleValue();
        deserializerMap['rosterChangeWindowDays'] = (node) => rosterChangeWindowDays = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['rosterChangeWindowTime'] = (node) => rosterChangeWindowTime = node.getObjectValue<UpdateGameRulesRequestBodyRosterChangeWindowTime>(UpdateGameRulesRequestBodyRosterChangeWindowTime.createFromDiscriminatorValue);
        deserializerMap['rosterLockEnabled'] = (node) => rosterLockEnabled = node.getBoolValue();
        deserializerMap['teamSize'] = (node) => teamSize = node.getObjectValue<UpdateGameRulesRequestBodyTeamSize>(UpdateGameRulesRequestBodyTeamSize.createFromDiscriminatorValue);
        deserializerMap['timezone'] = (node) => timezone = node.getStringValue();
        deserializerMap['wagersAllowed'] = (node) => wagersAllowed = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('allowedDays', allowedDays);
        writer.writeCollectionOfPrimitiveValues<String?>('allowedMapIds', allowedMapIds);
        writer.writeCollectionOfPrimitiveValues<String?>('allowedPlaylistIds', allowedPlaylistIds);
        writer.writeObjectValue<UpdateGameRulesRequestBodyAllowedTimeRange>('allowedTimeRange', allowedTimeRange);
        writer.writeCollectionOfPrimitiveValues<String?>('blockedDays', blockedDays);
        writer.writeDoubleValue('challengeCooldownMinutes', challengeCooldownMinutes);
        writer.writeBoolValue('challengesEnabled', value:challengesEnabled);
        writer.writeBoolValue('forceCompetitive', value:forceCompetitive);
        writer.writeStringValue('gameId', gameId);
        writer.writeEnumValue<UpdateGameRulesRequestBodyMatchFormat>('matchFormat', matchFormat, (e) => e?.value);
        writer.writeDoubleValue('maxChallengesPerTeamPerSeason', maxChallengesPerTeamPerSeason);
        writer.writeDoubleValue('maxPendingChallengesPerOpponent', maxPendingChallengesPerOpponent);
        writer.writeDoubleValue('maxPendingChallengesTotal', maxPendingChallengesTotal);
        writer.writeDoubleValue('maxPointsMatchesPerPairPer24h', maxPointsMatchesPerPairPer24h);
        writer.writeDoubleValue('maxRosterChangesPerWeek', maxRosterChangesPerWeek);
        writer.writeDoubleValue('maxRosterSize', maxRosterSize);
        writer.writeDoubleValue('maxWagerAmount', maxWagerAmount);
        writer.writeDoubleValue('minRosterSize', minRosterSize);
        writer.writeDoubleValue('minWagerAmount', minWagerAmount);
        writer.writeCollectionOfPrimitiveValues<String?>('rosterChangeWindowDays', rosterChangeWindowDays);
        writer.writeObjectValue<UpdateGameRulesRequestBodyRosterChangeWindowTime>('rosterChangeWindowTime', rosterChangeWindowTime);
        writer.writeBoolValue('rosterLockEnabled', value:rosterLockEnabled);
        writer.writeObjectValue<UpdateGameRulesRequestBodyTeamSize>('teamSize', teamSize);
        writer.writeStringValue('timezone', timezone);
        writer.writeBoolValue('wagersAllowed', value:wagersAllowed);
        writer.writeAdditionalData(additionalData);
    }
}
