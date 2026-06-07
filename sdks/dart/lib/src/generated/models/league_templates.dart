// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_templates_templates.dart';

/// auto generated
/// League rule templates.
class LeagueTemplates implements Parsable {
    ///  Number of templates returned.
    int? count;
    ///  Rule templates visible to the API key owner.
    Iterable<LeagueTemplatesTemplates>? templates;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueTemplates createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueTemplates();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['templates'] = (node) => templates = node.getCollectionOfObjectValues<LeagueTemplatesTemplates>(LeagueTemplatesTemplates.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeagueTemplatesTemplates>('templates', templates);
        writer.writeStringValue('timestamp', timestamp);
    }
}
