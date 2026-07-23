// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_invite_team_avatar_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TournamentInviteTeamAvatarUrlMember1]
class TournamentInviteTeamAvatarUrl implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TournamentInviteTeamAvatarUrlMember1]
    TournamentInviteTeamAvatarUrlMember1? tournamentInviteTeamAvatarUrlMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentInviteTeamAvatarUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentInviteTeamAvatarUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.tournamentInviteTeamAvatarUrlMember1 = TournamentInviteTeamAvatarUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentInviteTeamAvatarUrlMember1 != null){tournamentInviteTeamAvatarUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TournamentInviteTeamAvatarUrlMember1>(null, tournamentInviteTeamAvatarUrlMember1);
        }
    }
}
