// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_ticket_request_body_category.dart';

/// auto generated
/// Creates a self-filed support ticket owned by the API key owner.
class CreateTicketRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Support category. Entity-bound and staff-only categories are rejected.
    CreateTicketRequestBodyCategory? category;
    ///  Initial message / description (max 2000 chars).
    String? description;
    ///  Optional storage IDs (from /uploads/image-url) to attach (max 10).
    Iterable<String>? images;
    ///  Ticket subject (max 150 chars).
    String? subject;
    /// Instantiates a new [CreateTicketRequestBody] and sets the default values.
    CreateTicketRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateTicketRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateTicketRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getEnumValue<CreateTicketRequestBodyCategory>((stringValue) => CreateTicketRequestBodyCategory.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['images'] = (node) => images = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<CreateTicketRequestBodyCategory>('category', category, (e) => e?.value);
        writer.writeStringValue('description', description);
        writer.writeCollectionOfPrimitiveValues<String?>('images', images);
        writer.writeStringValue('subject', subject);
        writer.writeAdditionalData(additionalData);
    }
}
