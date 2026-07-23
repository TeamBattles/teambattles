// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_participant_team_avatar_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TournamentParticipantTeamAvatarUrlMember1]
class TournamentParticipantTeamAvatarUrl implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TournamentParticipantTeamAvatarUrlMember1]
    TournamentParticipantTeamAvatarUrlMember1? tournamentParticipantTeamAvatarUrlMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentParticipantTeamAvatarUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentParticipantTeamAvatarUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.tournamentParticipantTeamAvatarUrlMember1 = TournamentParticipantTeamAvatarUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentParticipantTeamAvatarUrlMember1 != null){tournamentParticipantTeamAvatarUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TournamentParticipantTeamAvatarUrlMember1>(null, tournamentParticipantTeamAvatarUrlMember1);
        }
    }
}
