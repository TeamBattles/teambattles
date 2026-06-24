// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Refuses a pending challenge as the API key owner.
class RefuseChallengeRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional reason shown to the challenging team.
    String? reason;
    /// Instantiates a new [RefuseChallengeRequestBody] and sets the default values.
    RefuseChallengeRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RefuseChallengeRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return RefuseChallengeRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('reason', reason);
        writer.writeAdditionalData(additionalData);
    }
}
