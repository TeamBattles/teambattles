// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_recorded_stream_path_timestamp.dart';
import './twitch_recorded_stream_recording.dart';

/// auto generated
/// One recorded Twitch stream.
class TwitchRecordedStream implements Parsable {
    ///  Seconds from the start to the end, or to when it was last seen live.
    int? durationSeconds;
    ///  Stream end (ISO 8601); null while it was still live at the last pass.
    String? endedAt;
    ///  Category name, when Twitch reported one.
    String? game;
    ///  CDN host the recording was found on; null unless recording is available.
    String? host;
    ///  Channel login when the stream ran; part of the recording path.
    String? login;
    ///  Unix second used in the recording path; null unless recording is available.
    TwitchRecordedStreamPathTimestamp? pathTimestamp;
    ///  available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
    TwitchRecordedStreamRecording? recording;
    ///  When the recording was found removed (ISO 8601), else null.
    String? removedAt;
    ///  Stream start (ISO 8601).
    String? startedAt;
    ///  Twitch stream (broadcast) id.
    String? streamId;
    ///  Stream title, when Twitch reported one.
    String? title;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchRecordedStream createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchRecordedStream();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['duration_seconds'] = (node) => durationSeconds = node.getIntValue();
        deserializerMap['ended_at'] = (node) => endedAt = node.getStringValue();
        deserializerMap['game'] = (node) => game = node.getStringValue();
        deserializerMap['host'] = (node) => host = node.getStringValue();
        deserializerMap['login'] = (node) => login = node.getStringValue();
        deserializerMap['path_timestamp'] = (node) => pathTimestamp = node.getObjectValue<TwitchRecordedStreamPathTimestamp>(TwitchRecordedStreamPathTimestamp.createFromDiscriminatorValue);
        deserializerMap['recording'] = (node) => recording = node.getEnumValue<TwitchRecordedStreamRecording>((stringValue) => TwitchRecordedStreamRecording.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['removed_at'] = (node) => removedAt = node.getStringValue();
        deserializerMap['started_at'] = (node) => startedAt = node.getStringValue();
        deserializerMap['stream_id'] = (node) => streamId = node.getStringValue();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('duration_seconds', durationSeconds);
        writer.writeStringValue('ended_at', endedAt);
        writer.writeStringValue('game', game);
        writer.writeStringValue('host', host);
        writer.writeStringValue('login', login);
        writer.writeObjectValue<TwitchRecordedStreamPathTimestamp>('path_timestamp', pathTimestamp);
        writer.writeEnumValue<TwitchRecordedStreamRecording>('recording', recording, (e) => e?.value);
        writer.writeStringValue('removed_at', removedAt);
        writer.writeStringValue('started_at', startedAt);
        writer.writeStringValue('stream_id', streamId);
        writer.writeStringValue('title', title);
    }
}
