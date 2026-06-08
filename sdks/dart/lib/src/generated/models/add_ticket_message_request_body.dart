// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Adds a reply message to one of the API key owner's tickets.
class AddTicketMessageRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Reply message body (max 2000 chars).
    String? content;
    ///  Optional storage IDs (from /uploads/image-url) to attach (max 10).
    Iterable<String>? images;
    /// Instantiates a new [AddTicketMessageRequestBody] and sets the default values.
    AddTicketMessageRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AddTicketMessageRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return AddTicketMessageRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['content'] = (node) => content = node.getStringValue();
        deserializerMap['images'] = (node) => images = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('content', content);
        writer.writeCollectionOfPrimitiveValues<String?>('images', images);
        writer.writeAdditionalData(additionalData);
    }
}
