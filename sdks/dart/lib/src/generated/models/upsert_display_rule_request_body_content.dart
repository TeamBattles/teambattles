// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './upsert_display_rule_request_body_content_sections.dart';

/// auto generated
class UpsertDisplayRuleRequestBodyContent implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The sections property
    Iterable<UpsertDisplayRuleRequestBodyContentSections>? sections;
    /// Instantiates a new [UpsertDisplayRuleRequestBodyContent] and sets the default values.
    UpsertDisplayRuleRequestBodyContent() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpsertDisplayRuleRequestBodyContent createFromDiscriminatorValue(ParseNode parseNode) {
        return UpsertDisplayRuleRequestBodyContent();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['sections'] = (node) => sections = node.getCollectionOfObjectValues<UpsertDisplayRuleRequestBodyContentSections>(UpsertDisplayRuleRequestBodyContentSections.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<UpsertDisplayRuleRequestBodyContentSections>('sections', sections);
        writer.writeAdditionalData(additionalData);
    }
}
