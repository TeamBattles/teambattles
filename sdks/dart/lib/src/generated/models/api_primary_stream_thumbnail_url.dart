// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_primary_stream_thumbnail_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiPrimaryStreamThumbnailUrlMember1], [String?]
class ApiPrimaryStreamThumbnailUrl implements Parsable {
    ///  Composed type representation for type [ApiPrimaryStreamThumbnailUrlMember1]
    ApiPrimaryStreamThumbnailUrlMember1? apiPrimaryStreamThumbnailUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiPrimaryStreamThumbnailUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiPrimaryStreamThumbnailUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiPrimaryStreamThumbnailUrlMember1 = ApiPrimaryStreamThumbnailUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiPrimaryStreamThumbnailUrlMember1 != null){apiPrimaryStreamThumbnailUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiPrimaryStreamThumbnailUrlMember1>(null, apiPrimaryStreamThumbnailUrlMember1);
        }
    }
}
