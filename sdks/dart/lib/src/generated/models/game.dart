// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Game definition.
class Game implements Parsable {
    ///  Game ID.
    String? id;
    ///  Game name key for i18n lookup.
    String? nameKey;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Game createFromDiscriminatorValue(ParseNode parseNode) {
        return Game();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeStringValue('nameKey', nameKey);
    }
}
