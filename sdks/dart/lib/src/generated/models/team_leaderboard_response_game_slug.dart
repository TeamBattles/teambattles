// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './team_leaderboard_response_game_slug_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TeamLeaderboardResponseGameSlugMember1]
class TeamLeaderboardResponseGameSlug implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TeamLeaderboardResponseGameSlugMember1]
    TeamLeaderboardResponseGameSlugMember1? teamLeaderboardResponseGameSlugMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TeamLeaderboardResponseGameSlug createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TeamLeaderboardResponseGameSlug();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.teamLeaderboardResponseGameSlugMember1 = TeamLeaderboardResponseGameSlugMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(teamLeaderboardResponseGameSlugMember1 != null){teamLeaderboardResponseGameSlugMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TeamLeaderboardResponseGameSlugMember1>(null, teamLeaderboardResponseGameSlugMember1);
        }
    }
}
