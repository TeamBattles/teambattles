// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_league_ticket_request_body_priority.dart';

/// auto generated
/// Creates a league-scoped support ticket.
class CreateLeagueTicketRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The description property
    String? description;
    ///  The priority property
    CreateLeagueTicketRequestBodyPriority? priority;
    ///  The subject property
    String? subject;
    /// Instantiates a new [CreateLeagueTicketRequestBody] and sets the default values.
    CreateLeagueTicketRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateLeagueTicketRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateLeagueTicketRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['priority'] = (node) => priority = node.getEnumValue<CreateLeagueTicketRequestBodyPriority>((stringValue) => CreateLeagueTicketRequestBodyPriority.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeEnumValue<CreateLeagueTicketRequestBodyPriority>('priority', priority, (e) => e?.value);
        writer.writeStringValue('subject', subject);
        writer.writeAdditionalData(additionalData);
    }
}
