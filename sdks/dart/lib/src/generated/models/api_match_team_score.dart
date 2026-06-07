// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_team_score_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiMatchTeamScoreMember1], [int?]
class ApiMatchTeamScore implements Parsable {
    ///  Composed type representation for type [ApiMatchTeamScoreMember1]
    ApiMatchTeamScoreMember1? apiMatchTeamScoreMember1;
    ///  Composed type representation for type [int?]
    int? integer;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMatchTeamScore createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiMatchTeamScore();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.apiMatchTeamScoreMember1 = ApiMatchTeamScoreMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiMatchTeamScoreMember1 != null){apiMatchTeamScoreMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiMatchTeamScoreMember1>(null, apiMatchTeamScoreMember1);
        }
    }
}
