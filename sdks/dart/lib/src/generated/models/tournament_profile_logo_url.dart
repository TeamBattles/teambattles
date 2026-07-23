// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_profile_logo_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TournamentProfileLogoUrlMember1]
class TournamentProfileLogoUrl implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TournamentProfileLogoUrlMember1]
    TournamentProfileLogoUrlMember1? tournamentProfileLogoUrlMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentProfileLogoUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentProfileLogoUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.tournamentProfileLogoUrlMember1 = TournamentProfileLogoUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentProfileLogoUrlMember1 != null){tournamentProfileLogoUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TournamentProfileLogoUrlMember1>(null, tournamentProfileLogoUrlMember1);
        }
    }
}
