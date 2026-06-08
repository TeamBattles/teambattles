// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_create_match_body_input_device.dart';
import './game_create_match_body_map_preference_mode.dart';
import './game_create_match_body_map_selection_type.dart';
import './game_create_match_body_platform.dart';
import './game_create_match_body_region.dart';

/// auto generated
/// Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
class GameCreateMatchBody implements AdditionalDataHolder, Parsable {
    ///  ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
    String? acceptedTeamId;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Number of maps in the series. One of 1, 3, 5, or 7.
    double? bestOf;
    ///  ID of the creating team. Must belong to the key's bound game.
    String? creatorTeamId;
    ///  Game mode identifier (e.g. search_and_destroy).
    String? gameModeId;
    ///  Allowed input device (e.g. ALL).
    GameCreateMatchBodyInputDevice? inputDevice;
    ///  Map preference mode (PREFERRED, VETO, or MANUAL).
    GameCreateMatchBodyMapPreferenceMode? mapPreferenceMode;
    ///  Map selection type (COMPETITIVE or FLEX).
    GameCreateMatchBodyMapSelectionType? mapSelectionType;
    ///  Match platform (e.g. CROSSPLAY).
    GameCreateMatchBodyPlatform? platform;
    ///  Match region (e.g. NONE).
    GameCreateMatchBodyRegion? region;
    ///  Optional scheduled start time (epoch ms).
    double? scheduledAt;
    ///  Optional pre-selected map IDs.
    Iterable<String>? selectedMaps;
    ///  Optional pre-selected objective IDs.
    Iterable<String>? selectedObjectives;
    ///  Players per team (validated against the game's min/max).
    double? teamSize;
    /// Instantiates a new [GameCreateMatchBody] and sets the default values.
    GameCreateMatchBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameCreateMatchBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameCreateMatchBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptedTeamId'] = (node) => acceptedTeamId = node.getStringValue();
        deserializerMap['bestOf'] = (node) => bestOf = node.getDoubleValue();
        deserializerMap['creatorTeamId'] = (node) => creatorTeamId = node.getStringValue();
        deserializerMap['gameModeId'] = (node) => gameModeId = node.getStringValue();
        deserializerMap['inputDevice'] = (node) => inputDevice = node.getEnumValue<GameCreateMatchBodyInputDevice>((stringValue) => GameCreateMatchBodyInputDevice.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['mapPreferenceMode'] = (node) => mapPreferenceMode = node.getEnumValue<GameCreateMatchBodyMapPreferenceMode>((stringValue) => GameCreateMatchBodyMapPreferenceMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['mapSelectionType'] = (node) => mapSelectionType = node.getEnumValue<GameCreateMatchBodyMapSelectionType>((stringValue) => GameCreateMatchBodyMapSelectionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['platform'] = (node) => platform = node.getEnumValue<GameCreateMatchBodyPlatform>((stringValue) => GameCreateMatchBodyPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['region'] = (node) => region = node.getEnumValue<GameCreateMatchBodyRegion>((stringValue) => GameCreateMatchBodyRegion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['scheduledAt'] = (node) => scheduledAt = node.getDoubleValue();
        deserializerMap['selectedMaps'] = (node) => selectedMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['selectedObjectives'] = (node) => selectedObjectives = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['teamSize'] = (node) => teamSize = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('acceptedTeamId', acceptedTeamId);
        writer.writeDoubleValue('bestOf', bestOf);
        writer.writeStringValue('creatorTeamId', creatorTeamId);
        writer.writeStringValue('gameModeId', gameModeId);
        writer.writeEnumValue<GameCreateMatchBodyInputDevice>('inputDevice', inputDevice, (e) => e?.value);
        writer.writeEnumValue<GameCreateMatchBodyMapPreferenceMode>('mapPreferenceMode', mapPreferenceMode, (e) => e?.value);
        writer.writeEnumValue<GameCreateMatchBodyMapSelectionType>('mapSelectionType', mapSelectionType, (e) => e?.value);
        writer.writeEnumValue<GameCreateMatchBodyPlatform>('platform', platform, (e) => e?.value);
        writer.writeEnumValue<GameCreateMatchBodyRegion>('region', region, (e) => e?.value);
        writer.writeDoubleValue('scheduledAt', scheduledAt);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedMaps', selectedMaps);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedObjectives', selectedObjectives);
        writer.writeDoubleValue('teamSize', teamSize);
        writer.writeAdditionalData(additionalData);
    }
}
