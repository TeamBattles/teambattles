// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_round_schedule_response_starts_at.dart';

/// auto generated
/// Result of scheduling a tournament round.
class TournamentRoundScheduleResponse implements Parsable {
    ///  The roundId property
    String? roundId;
    ///  The value now stored on the round.
    TournamentRoundScheduleResponseStartsAt? startsAt;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentRoundScheduleResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentRoundScheduleResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['roundId'] = (node) => roundId = node.getStringValue();
        deserializerMap['startsAt'] = (node) => startsAt = node.getObjectValue<TournamentRoundScheduleResponseStartsAt>(TournamentRoundScheduleResponseStartsAt.createFromDiscriminatorValue);
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('roundId', roundId);
        writer.writeObjectValue<TournamentRoundScheduleResponseStartsAt>('startsAt', startsAt);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
