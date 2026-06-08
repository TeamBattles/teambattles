// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_match_request_body_bench_roster.dart';
import './create_match_request_body_game_specific_options.dart';
import './create_match_request_body_input_device.dart';
import './create_match_request_body_locked_rules.dart';
import './create_match_request_body_map_preference_mode.dart';
import './create_match_request_body_map_selection_type.dart';
import './create_match_request_body_match_type.dart';
import './create_match_request_body_platform.dart';
import './create_match_request_body_publish_status.dart';
import './create_match_request_body_region.dart';

/// auto generated
/// Creates a new match as the API key owner.
class CreateMatchRequestBody implements AdditionalDataHolder, Parsable {
    ///  Active roster user IDs (must be creator-team members).
    Iterable<String>? activeRoster;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional bench roster.
    Iterable<CreateMatchRequestBodyBenchRoster>? benchRoster;
    ///  Series length (best of N).
    int? bestOf;
    ///  Challenged team ID (required when isChallenge is true).
    String? challengedTeamId;
    ///  Game ID for the match.
    String? gameId;
    ///  Game mode ID (client-side definition).
    String? gameModeId;
    ///  Game-specific options.
    CreateMatchRequestBodyGameSpecificOptions? gameSpecificOptions;
    ///  Input device (defaults to ALL).
    CreateMatchRequestBodyInputDevice? inputDevice;
    ///  Create as a direct challenge to another team.
    bool? isChallenge;
    ///  League ID for a league match.
    String? leagueId;
    ///  Locked rule flags.
    CreateMatchRequestBodyLockedRules? lockedRules;
    ///  Map preference mode.
    CreateMatchRequestBodyMapPreferenceMode? mapPreferenceMode;
    ///  Map selection type.
    CreateMatchRequestBodyMapSelectionType? mapSelectionType;
    ///  Match type.
    CreateMatchRequestBodyMatchType? matchType;
    ///  Optional match notes.
    String? notes;
    ///  Platform (defaults to CROSSPLAY).
    CreateMatchRequestBodyPlatform? platform;
    ///  Publish status (defaults to DRAFT).
    CreateMatchRequestBodyPublishStatus? publishStatus;
    ///  Region (defaults to NONE).
    CreateMatchRequestBodyRegion? region;
    ///  Scheduled start (epoch ms).
    double? scheduledAt;
    ///  Selected map IDs.
    Iterable<String>? selectedMaps;
    ///  Selected objective IDs.
    Iterable<String>? selectedObjectives;
    ///  Creator team ID. The owner must captain it.
    String? teamId;
    ///  Players per team.
    int? teamSize;
    ///  Wager amount (WAGER matches only).
    double? wagerAmount;
    /// Instantiates a new [CreateMatchRequestBody] and sets the default values.
    CreateMatchRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateMatchRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateMatchRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activeRoster'] = (node) => activeRoster = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['benchRoster'] = (node) => benchRoster = node.getCollectionOfObjectValues<CreateMatchRequestBodyBenchRoster>(CreateMatchRequestBodyBenchRoster.createFromDiscriminatorValue);
        deserializerMap['bestOf'] = (node) => bestOf = node.getIntValue();
        deserializerMap['challengedTeamId'] = (node) => challengedTeamId = node.getStringValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['gameModeId'] = (node) => gameModeId = node.getStringValue();
        deserializerMap['gameSpecificOptions'] = (node) => gameSpecificOptions = node.getObjectValue<CreateMatchRequestBodyGameSpecificOptions>(CreateMatchRequestBodyGameSpecificOptions.createFromDiscriminatorValue);
        deserializerMap['inputDevice'] = (node) => inputDevice = node.getEnumValue<CreateMatchRequestBodyInputDevice>((stringValue) => CreateMatchRequestBodyInputDevice.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['isChallenge'] = (node) => isChallenge = node.getBoolValue();
        deserializerMap['leagueId'] = (node) => leagueId = node.getStringValue();
        deserializerMap['lockedRules'] = (node) => lockedRules = node.getObjectValue<CreateMatchRequestBodyLockedRules>(CreateMatchRequestBodyLockedRules.createFromDiscriminatorValue);
        deserializerMap['mapPreferenceMode'] = (node) => mapPreferenceMode = node.getEnumValue<CreateMatchRequestBodyMapPreferenceMode>((stringValue) => CreateMatchRequestBodyMapPreferenceMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['mapSelectionType'] = (node) => mapSelectionType = node.getEnumValue<CreateMatchRequestBodyMapSelectionType>((stringValue) => CreateMatchRequestBodyMapSelectionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['matchType'] = (node) => matchType = node.getEnumValue<CreateMatchRequestBodyMatchType>((stringValue) => CreateMatchRequestBodyMatchType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['notes'] = (node) => notes = node.getStringValue();
        deserializerMap['platform'] = (node) => platform = node.getEnumValue<CreateMatchRequestBodyPlatform>((stringValue) => CreateMatchRequestBodyPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['publishStatus'] = (node) => publishStatus = node.getEnumValue<CreateMatchRequestBodyPublishStatus>((stringValue) => CreateMatchRequestBodyPublishStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['region'] = (node) => region = node.getEnumValue<CreateMatchRequestBodyRegion>((stringValue) => CreateMatchRequestBodyRegion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getDoubleValue();
        deserializerMap['selectedMaps'] = (node) => selectedMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['selectedObjectives'] = (node) => selectedObjectives = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamSize'] = (node) => teamSize = node.getIntValue();
        deserializerMap['wagerAmount'] = (node) => wagerAmount = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('activeRoster', activeRoster);
        writer.writeCollectionOfObjectValues<CreateMatchRequestBodyBenchRoster>('benchRoster', benchRoster);
        writer.writeIntValue('bestOf', bestOf);
        writer.writeStringValue('challengedTeamId', challengedTeamId);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('gameModeId', gameModeId);
        writer.writeObjectValue<CreateMatchRequestBodyGameSpecificOptions>('gameSpecificOptions', gameSpecificOptions);
        writer.writeEnumValue<CreateMatchRequestBodyInputDevice>('inputDevice', inputDevice, (e) => e?.value);
        writer.writeBoolValue('isChallenge', value:isChallenge);
        writer.writeStringValue('leagueId', leagueId);
        writer.writeObjectValue<CreateMatchRequestBodyLockedRules>('lockedRules', lockedRules);
        writer.writeEnumValue<CreateMatchRequestBodyMapPreferenceMode>('mapPreferenceMode', mapPreferenceMode, (e) => e?.value);
        writer.writeEnumValue<CreateMatchRequestBodyMapSelectionType>('mapSelectionType', mapSelectionType, (e) => e?.value);
        writer.writeEnumValue<CreateMatchRequestBodyMatchType>('matchType', matchType, (e) => e?.value);
        writer.writeStringValue('notes', notes);
        writer.writeEnumValue<CreateMatchRequestBodyPlatform>('platform', platform, (e) => e?.value);
        writer.writeEnumValue<CreateMatchRequestBodyPublishStatus>('publishStatus', publishStatus, (e) => e?.value);
        writer.writeEnumValue<CreateMatchRequestBodyRegion>('region', region, (e) => e?.value);
        writer.writeDoubleValue('scheduledAt', scheduledAt);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedMaps', selectedMaps);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedObjectives', selectedObjectives);
        writer.writeStringValue('teamId', teamId);
        writer.writeIntValue('teamSize', teamSize);
        writer.writeDoubleValue('wagerAmount', wagerAmount);
        writer.writeAdditionalData(additionalData);
    }
}
