// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Acknowledgement that match regeneration was scheduled.
class TournamentRegenerateMatchesResponse implements Parsable {
    ///  An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
    int? queued;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentRegenerateMatchesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentRegenerateMatchesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['queued'] = (node) => queued = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('queued', queued);
        writer.writeStringValue('timestamp', timestamp);
    }
}
