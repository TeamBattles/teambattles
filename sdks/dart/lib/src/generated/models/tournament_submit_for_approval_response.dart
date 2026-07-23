// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_submit_for_approval_response_approval_status.dart';

/// auto generated
/// Result of submitting a draft tournament for staff review.
class TournamentSubmitForApprovalResponse implements Parsable {
    ///  The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
    TournamentSubmitForApprovalResponseApprovalStatus? approvalStatus;
    ///  True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
    bool? autoApproved;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentSubmitForApprovalResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentSubmitForApprovalResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['approvalStatus'] = (node) => approvalStatus = node.getEnumValue<TournamentSubmitForApprovalResponseApprovalStatus>((stringValue) => TournamentSubmitForApprovalResponseApprovalStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['autoApproved'] = (node) => autoApproved = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentSubmitForApprovalResponseApprovalStatus>('approvalStatus', approvalStatus, (e) => e?.value);
        writer.writeBoolValue('autoApproved', value:autoApproved);
        writer.writeStringValue('timestamp', timestamp);
    }
}
