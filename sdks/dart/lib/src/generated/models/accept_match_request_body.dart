// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accept_match_request_body_bench_roster.dart';
import './accept_match_request_body_disputed_rules.dart';
import './accept_match_request_body_map_preference_mode.dart';

/// auto generated
/// Creates a match acceptance request as the API key owner.
class AcceptMatchRequestBody implements AdditionalDataHolder, Parsable {
    ///  Active roster user IDs for the acceptance request.
    Iterable<String>? activeRoster;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional bench roster users.
    Iterable<AcceptMatchRequestBodyBenchRoster>? benchRoster;
    ///  Optional proposed rule changes.
    AcceptMatchRequestBodyDisputedRules? disputedRules;
    ///  Optional map preference mode for selected maps.
    AcceptMatchRequestBodyMapPreferenceMode? mapPreferenceMode;
    ///  Optional message for the match creator.
    String? message;
    ///  Optional proposed map IDs.
    Iterable<String>? selectedMaps;
    ///  Team ID accepting the match.
    String? teamId;
    /// Instantiates a new [AcceptMatchRequestBody] and sets the default values.
    AcceptMatchRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptMatchRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptMatchRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activeRoster'] = (node) => activeRoster = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['benchRoster'] = (node) => benchRoster = node.getCollectionOfObjectValues<AcceptMatchRequestBodyBenchRoster>(AcceptMatchRequestBodyBenchRoster.createFromDiscriminatorValue);
        deserializerMap['disputedRules'] = (node) => disputedRules = node.getObjectValue<AcceptMatchRequestBodyDisputedRules>(AcceptMatchRequestBodyDisputedRules.createFromDiscriminatorValue);
        deserializerMap['mapPreferenceMode'] = (node) => mapPreferenceMode = node.getEnumValue<AcceptMatchRequestBodyMapPreferenceMode>((stringValue) => AcceptMatchRequestBodyMapPreferenceMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['message'] = (node) => message = node.getStringValue();
        deserializerMap['selectedMaps'] = (node) => selectedMaps = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('activeRoster', activeRoster);
        writer.writeCollectionOfObjectValues<AcceptMatchRequestBodyBenchRoster>('benchRoster', benchRoster);
        writer.writeObjectValue<AcceptMatchRequestBodyDisputedRules>('disputedRules', disputedRules);
        writer.writeEnumValue<AcceptMatchRequestBodyMapPreferenceMode>('mapPreferenceMode', mapPreferenceMode, (e) => e?.value);
        writer.writeStringValue('message', message);
        writer.writeCollectionOfPrimitiveValues<String?>('selectedMaps', selectedMaps);
        writer.writeStringValue('teamId', teamId);
        writer.writeAdditionalData(additionalData);
    }
}
