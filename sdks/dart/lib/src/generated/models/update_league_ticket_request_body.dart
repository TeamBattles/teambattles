// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_league_ticket_request_body_assigned_to.dart';
import './update_league_ticket_request_body_priority.dart';
import './update_league_ticket_request_body_status.dart';

/// auto generated
/// Updates league ticket status, priority, or assignment.
class UpdateLeagueTicketRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  User ID to assign, or null to clear assignment.
    UpdateLeagueTicketRequestBodyAssignedTo? assignedTo;
    ///  The priority property
    UpdateLeagueTicketRequestBodyPriority? priority;
    ///  The status property
    UpdateLeagueTicketRequestBodyStatus? status;
    /// Instantiates a new [UpdateLeagueTicketRequestBody] and sets the default values.
    UpdateLeagueTicketRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateLeagueTicketRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateLeagueTicketRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['assignedTo'] = (node) => assignedTo = node.getObjectValue<UpdateLeagueTicketRequestBodyAssignedTo>(UpdateLeagueTicketRequestBodyAssignedTo.createFromDiscriminatorValue);
        deserializerMap['priority'] = (node) => priority = node.getEnumValue<UpdateLeagueTicketRequestBodyPriority>((stringValue) => UpdateLeagueTicketRequestBodyPriority.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['status'] = (node) => status = node.getEnumValue<UpdateLeagueTicketRequestBodyStatus>((stringValue) => UpdateLeagueTicketRequestBodyStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<UpdateLeagueTicketRequestBodyAssignedTo>('assignedTo', assignedTo);
        writer.writeEnumValue<UpdateLeagueTicketRequestBodyPriority>('priority', priority, (e) => e?.value);
        writer.writeEnumValue<UpdateLeagueTicketRequestBodyStatus>('status', status, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
