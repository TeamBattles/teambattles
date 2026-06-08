// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AcceptMatchRequestBodyBenchRoster implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Bench user ID.
    String? id;
    ///  Bench priority.
    double? priority;
    /// Instantiates a new [AcceptMatchRequestBodyBenchRoster] and sets the default values.
    AcceptMatchRequestBodyBenchRoster() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptMatchRequestBodyBenchRoster createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptMatchRequestBodyBenchRoster();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['priority'] = (node) => priority = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeDoubleValue('priority', priority);
        writer.writeAdditionalData(additionalData);
    }
}
