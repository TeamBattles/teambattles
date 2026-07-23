// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_free_agent_viewer_offer_status_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TournamentFreeAgentViewerOfferStatusMember1]
class TournamentFreeAgentViewerOfferStatus implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TournamentFreeAgentViewerOfferStatusMember1]
    TournamentFreeAgentViewerOfferStatusMember1? tournamentFreeAgentViewerOfferStatusMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFreeAgentViewerOfferStatus createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentFreeAgentViewerOfferStatus();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.tournamentFreeAgentViewerOfferStatusMember1 = TournamentFreeAgentViewerOfferStatusMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentFreeAgentViewerOfferStatusMember1 != null){tournamentFreeAgentViewerOfferStatusMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TournamentFreeAgentViewerOfferStatusMember1>(null, tournamentFreeAgentViewerOfferStatusMember1);
        }
    }
}
