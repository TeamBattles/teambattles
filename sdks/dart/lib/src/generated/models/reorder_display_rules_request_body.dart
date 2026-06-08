// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './reorder_display_rules_request_body_items.dart';

/// auto generated
/// Reorders display rules.
class ReorderDisplayRulesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Game ID whose display rules should reorder.
    String? gameId;
    ///  The items property
    Iterable<ReorderDisplayRulesRequestBodyItems>? items;
    /// Instantiates a new [ReorderDisplayRulesRequestBody] and sets the default values.
    ReorderDisplayRulesRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ReorderDisplayRulesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ReorderDisplayRulesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ReorderDisplayRulesRequestBodyItems>(ReorderDisplayRulesRequestBodyItems.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeCollectionOfObjectValues<ReorderDisplayRulesRequestBodyItems>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
