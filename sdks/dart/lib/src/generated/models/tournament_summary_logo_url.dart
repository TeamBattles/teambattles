// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_summary_logo_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TournamentSummaryLogoUrlMember1]
class TournamentSummaryLogoUrl implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TournamentSummaryLogoUrlMember1]
    TournamentSummaryLogoUrlMember1? tournamentSummaryLogoUrlMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentSummaryLogoUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentSummaryLogoUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.tournamentSummaryLogoUrlMember1 = TournamentSummaryLogoUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentSummaryLogoUrlMember1 != null){tournamentSummaryLogoUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TournamentSummaryLogoUrlMember1>(null, tournamentSummaryLogoUrlMember1);
        }
    }
}
