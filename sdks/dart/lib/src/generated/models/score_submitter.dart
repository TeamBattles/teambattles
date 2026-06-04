// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './score_submitter_name.dart';

/// auto generated
/// Identity of the captain who submitted a score.
class ScoreSubmitter implements Parsable {
    ///  The name property
    ScoreSubmitterName? name;
    ///  The teamId property
    String? teamId;
    ///  The userId property
    String? userId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ScoreSubmitter createFromDiscriminatorValue(ParseNode parseNode) {
        return ScoreSubmitter();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['name'] = (node) => name = node.getObjectValue<ScoreSubmitterName>(ScoreSubmitterName.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ScoreSubmitterName>('name', name);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('userId', userId);
    }
}
