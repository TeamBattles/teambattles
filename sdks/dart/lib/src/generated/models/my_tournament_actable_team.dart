// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A team the caller may act for in this tournament.
class MyTournamentActableTeam implements Parsable {
    ///  Team avatar URL.
    String? avatarUrl;
    ///  Team display name.
    String? name;
    ///  Team ID.
    String? teamId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentActableTeam createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentActableTeam();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('avatarUrl', avatarUrl);
        writer.writeStringValue('name', name);
        writer.writeStringValue('teamId', teamId);
    }
}
