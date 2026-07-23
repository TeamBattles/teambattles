// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_free_agent_offer_status.dart';
import './tournament_participant_status.dart';

/// auto generated
/// A free-agent offer addressed to the caller, in every state.
class MyTournamentOffer implements Parsable {
    ///  Offer time (epoch milliseconds).
    double? createdAt;
    ///  Optional note from the offering team.
    String? message;
    ///  Offer ID. Required by the offer-respond and offer-revoke endpoints.
    String? offerId;
    ///  The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
    TournamentParticipantStatus? offeringParticipantStatus;
    ///  Offering team's participant ID.
    String? participantId;
    ///  State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
    TournamentFreeAgentOfferStatus? status;
    ///  Offering team's avatar URL.
    String? teamAvatarUrl;
    ///  Offering team's ID.
    String? teamId;
    ///  Offering team's display name.
    String? teamName;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentOffer createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentOffer();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['message'] = (node) => message = node.getStringValue();
        deserializerMap['offerId'] = (node) => offerId = node.getStringValue();
        deserializerMap['offeringParticipantStatus'] = (node) => offeringParticipantStatus = node.getEnumValue<TournamentParticipantStatus>((stringValue) => TournamentParticipantStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['participantId'] = (node) => participantId = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentFreeAgentOfferStatus>((stringValue) => TournamentFreeAgentOfferStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamAvatarUrl'] = (node) => teamAvatarUrl = node.getStringValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamName'] = (node) => teamName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('message', message);
        writer.writeStringValue('offerId', offerId);
        writer.writeEnumValue<TournamentParticipantStatus>('offeringParticipantStatus', offeringParticipantStatus, (e) => e?.value);
        writer.writeStringValue('participantId', participantId);
        writer.writeEnumValue<TournamentFreeAgentOfferStatus>('status', status, (e) => e?.value);
        writer.writeStringValue('teamAvatarUrl', teamAvatarUrl);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('teamName', teamName);
    }
}
