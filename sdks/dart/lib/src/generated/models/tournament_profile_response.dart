// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_profile.dart';

/// auto generated
/// Tournament profile response envelope.
class TournamentProfileResponse implements Parsable {
    ///  Response generation time (ISO 8601).
    String? timestamp;
    ///  Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
    TournamentProfile? tournament;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentProfileResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentProfileResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['tournament'] = (node) => tournament = node.getObjectValue<TournamentProfile>(TournamentProfile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('timestamp', timestamp);
        writer.writeObjectValue<TournamentProfile>('tournament', tournament);
    }
}
