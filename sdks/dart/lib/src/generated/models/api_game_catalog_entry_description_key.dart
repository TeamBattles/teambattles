// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_catalog_entry_description_key_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiGameCatalogEntryDescriptionKeyMember1], [String?]
class ApiGameCatalogEntryDescriptionKey implements Parsable {
    ///  Composed type representation for type [ApiGameCatalogEntryDescriptionKeyMember1]
    ApiGameCatalogEntryDescriptionKeyMember1? apiGameCatalogEntryDescriptionKeyMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameCatalogEntryDescriptionKey createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiGameCatalogEntryDescriptionKey();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiGameCatalogEntryDescriptionKeyMember1 = ApiGameCatalogEntryDescriptionKeyMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiGameCatalogEntryDescriptionKeyMember1 != null){apiGameCatalogEntryDescriptionKeyMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<ApiGameCatalogEntryDescriptionKeyMember1>(null, apiGameCatalogEntryDescriptionKeyMember1);
        }
    }
}
