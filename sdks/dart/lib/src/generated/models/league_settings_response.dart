// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_settings_response_league.dart';

/// auto generated
/// Full league settings visible to league admins.
class LeagueSettingsResponse implements Parsable {
    ///  The league property
    LeagueSettingsResponseLeague? league;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSettingsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueSettingsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['league'] = (node) => league = node.getObjectValue<LeagueSettingsResponseLeague>(LeagueSettingsResponseLeague.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<LeagueSettingsResponseLeague>('league', league);
        writer.writeStringValue('timestamp', timestamp);
    }
}
