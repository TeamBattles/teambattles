// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Acknowledgement that a tournament was started. Matches follow asynchronously.
class TournamentStartResponse implements Parsable {
    ///  The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
    bool? accepted;
    ///  Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
    String? matchGeneration;
    ///  Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
    int? nodeCount;
    ///  The lifecycle status this call set.
    String? status;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentStartResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentStartResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accepted'] = (node) => accepted = node.getBoolValue();
        deserializerMap['matchGeneration'] = (node) => matchGeneration = node.getStringValue();
        deserializerMap['nodeCount'] = (node) => nodeCount = node.getIntValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('accepted', value:accepted);
        writer.writeStringValue('matchGeneration', matchGeneration);
        writer.writeIntValue('nodeCount', nodeCount);
        writer.writeStringValue('status', status);
        writer.writeStringValue('timestamp', timestamp);
    }
}
