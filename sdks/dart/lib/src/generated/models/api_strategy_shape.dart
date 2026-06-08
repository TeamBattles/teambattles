// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy_shape_layer.dart';
import './api_strategy_shape_type.dart';
import './api_strategy_shape_updated_at.dart';

/// auto generated
/// API-safe strategy shape. Hidden working shapes are omitted from responses.
class ApiStrategyShape implements Parsable {
    ///  Opaque shape payload consumed by the canvas renderer.
    UntypedNode? data;
    ///  Shape row ID.
    String? id;
    ///  Canvas layer the shape renders on.
    ApiStrategyShapeLayer? layer;
    ///  Stable client-side shape id.
    String? shapeId;
    ///  Stage this shape belongs to.
    String? stageId;
    ///  Shape primitive type.
    ApiStrategyShapeType? type_;
    ///  The updatedAt property
    ApiStrategyShapeUpdatedAt? updatedAt;
    ///  Stacking order within its layer.
    double? zIndex;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategyShape createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStrategyShape();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['data'] = (node) => data = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['layer'] = (node) => layer = node.getEnumValue<ApiStrategyShapeLayer>((stringValue) => ApiStrategyShapeLayer.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['shapeId'] = (node) => shapeId = node.getStringValue();
        deserializerMap['stageId'] = (node) => stageId = node.getStringValue();
        deserializerMap['type'] = (node) => type_ = node.getEnumValue<ApiStrategyShapeType>((stringValue) => ApiStrategyShapeType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getObjectValue<ApiStrategyShapeUpdatedAt>(ApiStrategyShapeUpdatedAt.createFromDiscriminatorValue);
        deserializerMap['zIndex'] = (node) => zIndex = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<UntypedNode>('data', data);
        writer.writeStringValue('id', id);
        writer.writeEnumValue<ApiStrategyShapeLayer>('layer', layer, (e) => e?.value);
        writer.writeStringValue('shapeId', shapeId);
        writer.writeStringValue('stageId', stageId);
        writer.writeEnumValue<ApiStrategyShapeType>('type', type_, (e) => e?.value);
        writer.writeObjectValue<ApiStrategyShapeUpdatedAt>('updatedAt', updatedAt);
        writer.writeDoubleValue('zIndex', zIndex);
    }
}
