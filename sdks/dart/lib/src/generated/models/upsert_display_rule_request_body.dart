// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './upsert_display_rule_request_body_content.dart';
import './upsert_display_rule_request_body_scope.dart';

/// auto generated
/// Creates or updates a display rule.
class UpsertDisplayRuleRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Display rule category.
    String? category;
    ///  The categoryIcon property
    String? categoryIcon;
    ///  The categoryOrder property
    double? categoryOrder;
    ///  The content property
    UpsertDisplayRuleRequestBodyContent? content;
    ///  Game ID whose display rule should change.
    String? gameId;
    ///  The isCustomCategory property
    bool? isCustomCategory;
    ///  The isOverride property
    bool? isOverride;
    ///  The scope property
    UpsertDisplayRuleRequestBodyScope? scope;
    /// Instantiates a new [UpsertDisplayRuleRequestBody] and sets the default values.
    UpsertDisplayRuleRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpsertDisplayRuleRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpsertDisplayRuleRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['categoryIcon'] = (node) => categoryIcon = node.getStringValue();
        deserializerMap['categoryOrder'] = (node) => categoryOrder = node.getDoubleValue();
        deserializerMap['content'] = (node) => content = node.getObjectValue<UpsertDisplayRuleRequestBodyContent>(UpsertDisplayRuleRequestBodyContent.createFromDiscriminatorValue);
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['isCustomCategory'] = (node) => isCustomCategory = node.getBoolValue();
        deserializerMap['isOverride'] = (node) => isOverride = node.getBoolValue();
        deserializerMap['scope'] = (node) => scope = node.getObjectValue<UpsertDisplayRuleRequestBodyScope>(UpsertDisplayRuleRequestBodyScope.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('category', category);
        writer.writeStringValue('categoryIcon', categoryIcon);
        writer.writeDoubleValue('categoryOrder', categoryOrder);
        writer.writeObjectValue<UpsertDisplayRuleRequestBodyContent>('content', content);
        writer.writeStringValue('gameId', gameId);
        writer.writeBoolValue('isCustomCategory', value:isCustomCategory);
        writer.writeBoolValue('isOverride', value:isOverride);
        writer.writeObjectValue<UpsertDisplayRuleRequestBodyScope>('scope', scope);
        writer.writeAdditionalData(additionalData);
    }
}
