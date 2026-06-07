// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './team_leaderboard_entry_game_slug_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TeamLeaderboardEntryGameSlugMember1]
class TeamLeaderboardEntryGameSlug implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TeamLeaderboardEntryGameSlugMember1]
    TeamLeaderboardEntryGameSlugMember1? teamLeaderboardEntryGameSlugMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TeamLeaderboardEntryGameSlug createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TeamLeaderboardEntryGameSlug();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.teamLeaderboardEntryGameSlugMember1 = TeamLeaderboardEntryGameSlugMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(teamLeaderboardEntryGameSlugMember1 != null){teamLeaderboardEntryGameSlugMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TeamLeaderboardEntryGameSlugMember1>(null, teamLeaderboardEntryGameSlugMember1);
        }
    }
}
