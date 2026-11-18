// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_recorded_stream_ended_at.dart';
import './twitch_recorded_stream_game.dart';
import './twitch_recorded_stream_host.dart';
import './twitch_recorded_stream_path_timestamp.dart';
import './twitch_recorded_stream_recording.dart';
import './twitch_recorded_stream_removed_at.dart';
import './twitch_recorded_stream_title.dart';

/// auto generated
/// One recorded Twitch stream.
class TwitchRecordedStream implements Parsable {
    ///  Seconds from the start to the end, or to when it was last seen live.
    int? durationSeconds;
    ///  Stream end (ISO 8601); null while it was still live at the last pass.
    TwitchRecordedStreamEndedAt? endedAt;
    ///  Category name, when Twitch reported one.
    TwitchRecordedStreamGame? game;
    ///  CDN host the recording was found on; null unless recording is available.
    TwitchRecordedStreamHost? host;
    ///  Channel login when the stream ran; part of the recording path.
    String? login;
    ///  Unix second used in the recording path; null unless recording is available.
    TwitchRecordedStreamPathTimestamp? pathTimestamp;
    ///  available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
    TwitchRecordedStreamRecording? recording;
    ///  When the recording was found removed (ISO 8601), else null.
    TwitchRecordedStreamRemovedAt? removedAt;
    ///  Stream start (ISO 8601).
    String? startedAt;
    ///  Twitch stream (broadcast) id.
    String? streamId;
    ///  Stream title, when Twitch reported one.
    TwitchRecordedStreamTitle? title;
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
        deserializerMap['ended_at'] = (node) => endedAt = node.getObjectValue<TwitchRecordedStreamEndedAt>(TwitchRecordedStreamEndedAt.createFromDiscriminatorValue);
        deserializerMap['game'] = (node) => game = node.getObjectValue<TwitchRecordedStreamGame>(TwitchRecordedStreamGame.createFromDiscriminatorValue);
        deserializerMap['host'] = (node) => host = node.getObjectValue<TwitchRecordedStreamHost>(TwitchRecordedStreamHost.createFromDiscriminatorValue);
        deserializerMap['login'] = (node) => login = node.getStringValue();
        deserializerMap['path_timestamp'] = (node) => pathTimestamp = node.getObjectValue<TwitchRecordedStreamPathTimestamp>(TwitchRecordedStreamPathTimestamp.createFromDiscriminatorValue);
        deserializerMap['recording'] = (node) => recording = node.getEnumValue<TwitchRecordedStreamRecording>((stringValue) => TwitchRecordedStreamRecording.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['removed_at'] = (node) => removedAt = node.getObjectValue<TwitchRecordedStreamRemovedAt>(TwitchRecordedStreamRemovedAt.createFromDiscriminatorValue);
        deserializerMap['started_at'] = (node) => startedAt = node.getStringValue();
        deserializerMap['stream_id'] = (node) => streamId = node.getStringValue();
        deserializerMap['title'] = (node) => title = node.getObjectValue<TwitchRecordedStreamTitle>(TwitchRecordedStreamTitle.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('duration_seconds', durationSeconds);
        writer.writeObjectValue<TwitchRecordedStreamEndedAt>('ended_at', endedAt);
        writer.writeObjectValue<TwitchRecordedStreamGame>('game', game);
        writer.writeObjectValue<TwitchRecordedStreamHost>('host', host);
        writer.writeStringValue('login', login);
        writer.writeObjectValue<TwitchRecordedStreamPathTimestamp>('path_timestamp', pathTimestamp);
        writer.writeEnumValue<TwitchRecordedStreamRecording>('recording', recording, (e) => e?.value);
        writer.writeObjectValue<TwitchRecordedStreamRemovedAt>('removed_at', removedAt);
        writer.writeStringValue('started_at', startedAt);
        writer.writeStringValue('stream_id', streamId);
        writer.writeObjectValue<TwitchRecordedStreamTitle>('title', title);
    }
}
