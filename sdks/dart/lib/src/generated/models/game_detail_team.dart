// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A team as embedded in the game-developer match-detail response ({ _id, name, tag }).
class GameDetailTeam implements Parsable {
    ///  Team ID.
    String? id;
    ///  Team name.
    String? name;
    ///  Team tag (short identifier).
    String? tag;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameDetailTeam createFromDiscriminatorValue(ParseNode parseNode) {
        return GameDetailTeam();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['_id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('_id', id);
        writer.writeStringValue('name', name);
        writer.writeStringValue('tag', tag);
    }
}
