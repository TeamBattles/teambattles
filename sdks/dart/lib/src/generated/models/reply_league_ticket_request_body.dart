// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Adds a reply or internal note to a league support ticket.
class ReplyLeagueTicketRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The content property
    String? content;
    ///  The isInternal property
    bool? isInternal;
    /// Instantiates a new [ReplyLeagueTicketRequestBody] and sets the default values.
    ReplyLeagueTicketRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ReplyLeagueTicketRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ReplyLeagueTicketRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['content'] = (node) => content = node.getStringValue();
        deserializerMap['isInternal'] = (node) => isInternal = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('content', content);
        writer.writeBoolValue('isInternal', value:isInternal);
        writer.writeAdditionalData(additionalData);
    }
}
