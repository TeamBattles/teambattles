// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_cancel_response_approval_status.dart';

/// auto generated
/// Result of cancelling a tournament.
class TournamentCancelResponse implements Parsable {
    ///  The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
    TournamentCancelResponseApprovalStatus? approvalStatus;
    ///  The lifecycle status this call set.
    String? status;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentCancelResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentCancelResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['approvalStatus'] = (node) => approvalStatus = node.getEnumValue<TournamentCancelResponseApprovalStatus>((stringValue) => TournamentCancelResponseApprovalStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['status'] = (node) => status = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentCancelResponseApprovalStatus>('approvalStatus', approvalStatus, (e) => e?.value);
        writer.writeStringValue('status', status);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
