// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_round_schedule_request_body_starts_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [int?], [TournamentRoundScheduleRequestBodyStartsAtMember1]
class TournamentRoundScheduleRequestBodyStartsAt implements Parsable {
    ///  Composed type representation for type [int?]
    int? integer;
    ///  Composed type representation for type [TournamentRoundScheduleRequestBodyStartsAtMember1]
    TournamentRoundScheduleRequestBodyStartsAtMember1? tournamentRoundScheduleRequestBodyStartsAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentRoundScheduleRequestBodyStartsAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentRoundScheduleRequestBodyStartsAt();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.tournamentRoundScheduleRequestBodyStartsAtMember1 = TournamentRoundScheduleRequestBodyStartsAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentRoundScheduleRequestBodyStartsAtMember1 != null){tournamentRoundScheduleRequestBodyStartsAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TournamentRoundScheduleRequestBodyStartsAtMember1>(null, tournamentRoundScheduleRequestBodyStartsAtMember1);
        }
    }
}
