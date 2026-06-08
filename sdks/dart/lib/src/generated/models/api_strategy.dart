// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy_created_at.dart';
import './api_strategy_description.dart';
import './api_strategy_preview_url.dart';
import './api_strategy_stage.dart';
import './api_strategy_updated_at.dart';
import './strategy_visibility.dart';

/// auto generated
/// API-safe shareable strategy.
class ApiStrategy implements Parsable {
    ///  The createdAt property
    ApiStrategyCreatedAt? createdAt;
    ///  Author description, when set.
    ApiStrategyDescription? description;
    ///  Game slug the strategy targets.
    String? game;
    ///  Strategy ID.
    String? id;
    ///  Built-in map slug, or the sentinel "__custom" for a custom map.
    String? mapId;
    ///  Map render orientation in degrees (0, 90, 180, or 270).
    double? mapRotation;
    ///  Strategy name.
    String? name;
    ///  Owning user ID.
    String? ownerId;
    ///  Whether frame playback wraps from the last stage to the first.
    bool? playbackLoop;
    ///  Freshly signed preview image URL, when a preview has been rendered.
    ApiStrategyPreviewUrl? previewUrl;
    ///  Public share slug.
    String? shareSlug;
    ///  The stageCount property
    int? stageCount;
    ///  The stages property
    Iterable<ApiStrategyStage>? stages;
    ///  The updatedAt property
    ApiStrategyUpdatedAt? updatedAt;
    ///  Strategy share visibility setting.
    StrategyVisibility? visibility;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategy createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStrategy();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ApiStrategyCreatedAt>(ApiStrategyCreatedAt.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getObjectValue<ApiStrategyDescription>(ApiStrategyDescription.createFromDiscriminatorValue);
        deserializerMap['game'] = (node) => game = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapRotation'] = (node) => mapRotation = node.getDoubleValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['ownerId'] = (node) => ownerId = node.getStringValue();
        deserializerMap['playbackLoop'] = (node) => playbackLoop = node.getBoolValue();
        deserializerMap['previewUrl'] = (node) => previewUrl = node.getObjectValue<ApiStrategyPreviewUrl>(ApiStrategyPreviewUrl.createFromDiscriminatorValue);
        deserializerMap['shareSlug'] = (node) => shareSlug = node.getStringValue();
        deserializerMap['stageCount'] = (node) => stageCount = node.getIntValue();
        deserializerMap['stages'] = (node) => stages = node.getCollectionOfObjectValues<ApiStrategyStage>(ApiStrategyStage.createFromDiscriminatorValue);
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getObjectValue<ApiStrategyUpdatedAt>(ApiStrategyUpdatedAt.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<StrategyVisibility>((stringValue) => StrategyVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiStrategyCreatedAt>('createdAt', createdAt);
        writer.writeObjectValue<ApiStrategyDescription>('description', description);
        writer.writeStringValue('game', game);
        writer.writeStringValue('id', id);
        writer.writeStringValue('mapId', mapId);
        writer.writeDoubleValue('mapRotation', mapRotation);
        writer.writeStringValue('name', name);
        writer.writeStringValue('ownerId', ownerId);
        writer.writeBoolValue('playbackLoop', value:playbackLoop);
        writer.writeObjectValue<ApiStrategyPreviewUrl>('previewUrl', previewUrl);
        writer.writeStringValue('shareSlug', shareSlug);
        writer.writeIntValue('stageCount', stageCount);
        writer.writeCollectionOfObjectValues<ApiStrategyStage>('stages', stages);
        writer.writeObjectValue<ApiStrategyUpdatedAt>('updatedAt', updatedAt);
        writer.writeEnumValue<StrategyVisibility>('visibility', visibility, (e) => e?.value);
    }
}
