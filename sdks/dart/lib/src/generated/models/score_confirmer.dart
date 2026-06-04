// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './score_confirmer_confirmed_at.dart';

/// auto generated
/// Identity of the captain who confirmed a score.
class ScoreConfirmer implements Parsable {
    ///  Confirmation time (ISO 8601).
    ScoreConfirmerConfirmedAt? confirmedAt;
    ///  The teamId property
    String? teamId;
    ///  The userId property
    String? userId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ScoreConfirmer createFromDiscriminatorValue(ParseNode parseNode) {
        return ScoreConfirmer();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['confirmedAt'] = (node) => confirmedAt = node.getObjectValue<ScoreConfirmerConfirmedAt>(ScoreConfirmerConfirmedAt.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ScoreConfirmerConfirmedAt>('confirmedAt', confirmedAt);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('userId', userId);
    }
}
