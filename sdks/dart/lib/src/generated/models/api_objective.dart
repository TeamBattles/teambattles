// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Server-safe objective DTO. UI icon components are intentionally omitted.
class ApiObjective implements Parsable {
    ///  Machine-readable completion rule.
    String? completionRule;
    ///  i18n key for the objective description.
    String? descriptionKey;
    ///  Experience awarded by this objective.
    double? exp;
    ///  Objective definition ID.
    String? id;
    ///  Objective completion scope.
    String? scope;
    ///  i18n key for the objective title.
    String? titleKey;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiObjective createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiObjective();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['completionRule'] = (node) => completionRule = node.getStringValue();
        deserializerMap['descriptionKey'] = (node) => descriptionKey = node.getStringValue();
        deserializerMap['exp'] = (node) => exp = node.getDoubleValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['scope'] = (node) => scope = node.getStringValue();
        deserializerMap['titleKey'] = (node) => titleKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('completionRule', completionRule);
        writer.writeStringValue('descriptionKey', descriptionKey);
        writer.writeDoubleValue('exp', exp);
        writer.writeStringValue('id', id);
        writer.writeStringValue('scope', scope);
        writer.writeStringValue('titleKey', titleKey);
    }
}
