// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The user who performed a logged tournament action. Platform Staff actions suppress username/name and set isPlatformStaff: true, keeping only the id.
class TournamentActivityActor implements Parsable {
    ///  Actor's user ID.
    String? id;
    ///  Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
    bool? isPlatformStaff;
    ///  Display name. Omitted when the action was taken by Platform Staff.
    String? name;
    ///  Username. Omitted when the action was taken by Platform Staff.
    String? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentActivityActor createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentActivityActor();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isPlatformStaff'] = (node) => isPlatformStaff = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isPlatformStaff', value:isPlatformStaff);
        writer.writeStringValue('name', name);
        writer.writeStringValue('username', username);
    }
}
