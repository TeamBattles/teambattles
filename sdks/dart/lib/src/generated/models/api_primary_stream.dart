// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_primary_stream_game_name.dart';
import './api_primary_stream_last_live_at.dart';
import './api_primary_stream_started_at.dart';
import './api_primary_stream_stream_url.dart';
import './api_primary_stream_thumbnail_url.dart';
import './api_primary_stream_title.dart';
import './api_primary_stream_viewer_count.dart';
import './stream_platform.dart';

/// auto generated
/// The user's primary (highest-viewer) live stream.
class ApiPrimaryStream implements Parsable {
    ///  Game/category being streamed, when known.
    ApiPrimaryStreamGameName? gameName;
    ///  ISO timestamp the user was last observed live, when known.
    ApiPrimaryStreamLastLiveAt? lastLiveAt;
    ///  Supported streaming platform.
    StreamPlatform? platform;
    ///  Stream start time (platform-provided ISO timestamp), when known.
    ApiPrimaryStreamStartedAt? startedAt;
    ///  Watch URL, when known.
    ApiPrimaryStreamStreamUrl? streamUrl;
    ///  Stream thumbnail URL, when known.
    ApiPrimaryStreamThumbnailUrl? thumbnailUrl;
    ///  Stream title, when known.
    ApiPrimaryStreamTitle? title;
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
        deserializerMap['gameName'] = (node) => gameName = node.getObjectValue<ApiPrimaryStreamGameName>(ApiPrimaryStreamGameName.createFromDiscriminatorValue);
        deserializerMap['lastLiveAt'] = (node) => lastLiveAt = node.getObjectValue<ApiPrimaryStreamLastLiveAt>(ApiPrimaryStreamLastLiveAt.createFromDiscriminatorValue);
        deserializerMap['platform'] = (node) => platform = node.getEnumValue<StreamPlatform>((stringValue) => StreamPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['startedAt'] = (node) => startedAt = node.getObjectValue<ApiPrimaryStreamStartedAt>(ApiPrimaryStreamStartedAt.createFromDiscriminatorValue);
        deserializerMap['streamUrl'] = (node) => streamUrl = node.getObjectValue<ApiPrimaryStreamStreamUrl>(ApiPrimaryStreamStreamUrl.createFromDiscriminatorValue);
        deserializerMap['thumbnailUrl'] = (node) => thumbnailUrl = node.getObjectValue<ApiPrimaryStreamThumbnailUrl>(ApiPrimaryStreamThumbnailUrl.createFromDiscriminatorValue);
        deserializerMap['title'] = (node) => title = node.getObjectValue<ApiPrimaryStreamTitle>(ApiPrimaryStreamTitle.createFromDiscriminatorValue);
        deserializerMap['viewerCount'] = (node) => viewerCount = node.getObjectValue<ApiPrimaryStreamViewerCount>(ApiPrimaryStreamViewerCount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiPrimaryStreamGameName>('gameName', gameName);
        writer.writeObjectValue<ApiPrimaryStreamLastLiveAt>('lastLiveAt', lastLiveAt);
        writer.writeEnumValue<StreamPlatform>('platform', platform, (e) => e?.value);
        writer.writeObjectValue<ApiPrimaryStreamStartedAt>('startedAt', startedAt);
        writer.writeObjectValue<ApiPrimaryStreamStreamUrl>('streamUrl', streamUrl);
        writer.writeObjectValue<ApiPrimaryStreamThumbnailUrl>('thumbnailUrl', thumbnailUrl);
        writer.writeObjectValue<ApiPrimaryStreamTitle>('title', title);
        writer.writeObjectValue<ApiPrimaryStreamViewerCount>('viewerCount', viewerCount);
    }
}
