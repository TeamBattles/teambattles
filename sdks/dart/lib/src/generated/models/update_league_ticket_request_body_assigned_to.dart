// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_league_ticket_request_body_assigned_to_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [UpdateLeagueTicketRequestBodyAssignedToMember1]
class UpdateLeagueTicketRequestBodyAssignedTo implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [UpdateLeagueTicketRequestBodyAssignedToMember1]
    UpdateLeagueTicketRequestBodyAssignedToMember1? updateLeagueTicketRequestBodyAssignedToMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateLeagueTicketRequestBodyAssignedTo createFromDiscriminatorValue(ParseNode parseNode) {
        var result = UpdateLeagueTicketRequestBodyAssignedTo();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.updateLeagueTicketRequestBodyAssignedToMember1 = UpdateLeagueTicketRequestBodyAssignedToMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(updateLeagueTicketRequestBodyAssignedToMember1 != null){updateLeagueTicketRequestBodyAssignedToMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<UpdateLeagueTicketRequestBodyAssignedToMember1>(null, updateLeagueTicketRequestBodyAssignedToMember1);
        }
    }
}
