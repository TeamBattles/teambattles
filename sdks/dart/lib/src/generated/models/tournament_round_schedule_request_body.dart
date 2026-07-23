// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_round_schedule_request_body_starts_at.dart';

/// auto generated
/// Round schedule payload.
class TournamentRoundScheduleRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
    TournamentRoundScheduleRequestBodyStartsAt? startsAt;
    /// Instantiates a new [TournamentRoundScheduleRequestBody] and sets the default values.
    TournamentRoundScheduleRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentRoundScheduleRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentRoundScheduleRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['startsAt'] = (node) => startsAt = node.getObjectValue<TournamentRoundScheduleRequestBodyStartsAt>(TournamentRoundScheduleRequestBodyStartsAt.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentRoundScheduleRequestBodyStartsAt>('startsAt', startsAt);
        writer.writeAdditionalData(additionalData);
    }
}
