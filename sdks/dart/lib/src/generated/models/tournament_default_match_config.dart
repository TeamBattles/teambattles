// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_default_match_config_game_specific_options.dart';
import './tournament_default_match_config_input_device.dart';
import './tournament_default_match_config_locked_rules.dart';
import './tournament_default_match_config_map_preference_mode.dart';
import './tournament_default_match_config_map_selection_type.dart';
import './tournament_default_match_config_platform.dart';
import './tournament_default_match_config_region.dart';

/// auto generated
/// Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
class TournamentDefaultMatchConfig implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
    String? gameModeId;
    ///  The gameSpecificOptions property
    TournamentDefaultMatchConfigGameSpecificOptions? gameSpecificOptions;
    ///  The inputDevice property
    TournamentDefaultMatchConfigInputDevice? inputDevice;
    ///  Rule keys neither team may renegotiate on a generated match.
    TournamentDefaultMatchConfigLockedRules? lockedRules;
    ///  Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
    TournamentDefaultMatchConfigMapPreferenceMode? mapPreferenceMode;
    ///  The mapSelectionType property
    TournamentDefaultMatchConfigMapSelectionType? mapSelectionType;
    ///  The platform property
    TournamentDefaultMatchConfigPlatform? platform;
    ///  The region property
    TournamentDefaultMatchConfigRegion? region;
    ///  Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
    Iterable<String>? selectedMaps;
    ///  The selectedObjectives property
    Iterable<String>? selectedObjectives;
    /// Instantiates a new [TournamentDefaultMatchConfig] and sets the default values.
    TournamentDefaultMatchConfig() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentDefaultMatchConfig createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentDefaultMatchConfig();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameModeId'] = (node) => gameModeId = node.getStringValue();
        deserializerMap['gameSpecificOptions'] = (node) => gameSpecificOptions = node.getObjectValue<TournamentDefaultMatchConfigGameSpecificOptions>(TournamentDefaultMatchConfigGameSpecificOptions.createFromDiscriminatorValue);
        deserializerMap['inputDevice'] = (node) => inputDevice = node.getEnumValue<TournamentDefaultMatchConfigInputDevice>((stringValue) => TournamentDefaultMatchConfigInputDevice.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['lockedRules'] = (node) => lockedRules = node.getObjectValue<TournamentDefaultMatchConfigLockedRules>(TournamentDefaultMatchConfigLockedRules.createFromDiscriminatorValue);
        deserializerMap['mapPreferenceMode'] = (node) => mapPreferenceMode = node.getEnumValue<TournamentDefaultMatchConfigMapPreferenceMode>((stringValue) => TournamentDefaultMatchConfigMapPreferenceMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['mapSelectionType'] = (node) => mapSelectionType = node.getEnumValue<TournamentDefaultMatchConfigMapSelectionType>((stringValue) => TournamentDefaultMatchConfigMapSelectionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['platform'] = (node) => platform = node.getEnumValue<TournamentDefaultMatchConfigPlatform>((stringValue) => TournamentDefaultMatchConfigPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['region'] = (node) => region = node.getEnumValue<TournamentDefaultMatchConfigRegion>((stringValue) => TournamentDefaultMatchConfigRegion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['selectedMaps'] = (node) => selectedMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['selectedObjectives'] = (node) => selectedObjectives = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameModeId', gameModeId);
        writer.writeObjectValue<TournamentDefaultMatchConfigGameSpecificOptions>('gameSpecificOptions', gameSpecificOptions);
        writer.writeEnumValue<TournamentDefaultMatchConfigInputDevice>('inputDevice', inputDevice, (e) => e?.value);
        writer.writeObjectValue<TournamentDefaultMatchConfigLockedRules>('lockedRules', lockedRules);
        writer.writeEnumValue<TournamentDefaultMatchConfigMapPreferenceMode>('mapPreferenceMode', mapPreferenceMode, (e) => e?.value);
        writer.writeEnumValue<TournamentDefaultMatchConfigMapSelectionType>('mapSelectionType', mapSelectionType, (e) => e?.value);
        writer.writeEnumValue<TournamentDefaultMatchConfigPlatform>('platform', platform, (e) => e?.value);
        writer.writeEnumValue<TournamentDefaultMatchConfigRegion>('region', region, (e) => e?.value);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedMaps', selectedMaps);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedObjectives', selectedObjectives);
        writer.writeAdditionalData(additionalData);
    }
}
