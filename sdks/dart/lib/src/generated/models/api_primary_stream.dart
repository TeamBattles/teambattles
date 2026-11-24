// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_primary_stream_viewer_count.dart';
import './stream_platform.dart';

/// auto generated
/// The user's primary (highest-viewer) live stream.
class ApiPrimaryStream implements Parsable {
    ///  Game/category being streamed, when known.
    String? gameName;
    ///  ISO timestamp the user was last observed live, when known.
    String? lastLiveAt;
    ///  Supported streaming platform.
    StreamPlatform? platform;
    ///  Stream start time (platform-provided ISO timestamp), when known.
    String? startedAt;
    ///  Watch URL, when known.
    String? streamUrl;
    ///  Stream thumbnail URL, when known.
    String? thumbnailUrl;
    ///  Stream title, when known.
    String? title;
    ///  Current viewer count, when known.
    ApiPrimaryStreamViewerCount? viewerCount;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiPrimaryStream createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiPrimaryStream();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameName'] = (node) => gameName = node.getStringValue();
        deserializerMap['lastLiveAt'] = (node) => lastLiveAt = node.getStringValue();
        deserializerMap['platform'] = (node) => platform = node.getEnumValue<StreamPlatform>((stringValue) => StreamPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['startedAt'] = (node) => startedAt = node.getStringValue();
        deserializerMap['streamUrl'] = (node) => streamUrl = node.getStringValue();
        deserializerMap['thumbnailUrl'] = (node) => thumbnailUrl = node.getStringValue();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        deserializerMap['viewerCount'] = (node) => viewerCount = node.getObjectValue<ApiPrimaryStreamViewerCount>(ApiPrimaryStreamViewerCount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameName', gameName);
        writer.writeStringValue('lastLiveAt', lastLiveAt);
        writer.writeEnumValue<StreamPlatform>('platform', platform, (e) => e?.value);
        writer.writeStringValue('startedAt', startedAt);
        writer.writeStringValue('streamUrl', streamUrl);
        writer.writeStringValue('thumbnailUrl', thumbnailUrl);
        writer.writeStringValue('title', title);
        writer.writeObjectValue<ApiPrimaryStreamViewerCount>('viewerCount', viewerCount);
    }
}
