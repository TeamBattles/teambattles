// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_creator_team_score_member1.dart';

/// auto generated
/// Composed type wrapper for classes [GameMatchCreatorTeamScoreMember1], [int?]
class GameMatchCreatorTeamScore implements Parsable {
    ///  Composed type representation for type [GameMatchCreatorTeamScoreMember1]
    GameMatchCreatorTeamScoreMember1? gameMatchCreatorTeamScoreMember1;
    ///  Composed type representation for type [int?]
    int? integer;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchCreatorTeamScore createFromDiscriminatorValue(ParseNode parseNode) {
        var result = GameMatchCreatorTeamScore();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.gameMatchCreatorTeamScoreMember1 = GameMatchCreatorTeamScoreMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(gameMatchCreatorTeamScoreMember1 != null){gameMatchCreatorTeamScoreMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(integer != null) {
            writer.writeIntValue(null, integer);
        }
        else {
            writer.writeObjectValue<GameMatchCreatorTeamScoreMember1>(null, gameMatchCreatorTeamScoreMember1);
        }
    }
}
