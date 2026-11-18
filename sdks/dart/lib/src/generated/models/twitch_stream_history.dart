// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './stream_index_warning.dart';
import './twitch_recorded_stream.dart';

/// auto generated
/// A Twitch channel's recorded stream history from the Battles Replay Indexer.
class TwitchStreamHistory implements Parsable {
    ///  Twitch user id of the channel.
    String? broadcasterId;
    ///  Channel login.
    String? broadcasterLogin;
    ///  When the index started recording this channel (ISO 8601).
    String? indexedSince;
    ///  Recorded streams, newest first.
    Iterable<TwitchRecordedStream>? streams;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    ///  Coverage warnings, each a code with its values.
    Iterable<StreamIndexWarning>? warnings;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchStreamHistory createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchStreamHistory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['broadcaster_id'] = (node) => broadcasterId = node.getStringValue();
        deserializerMap['broadcaster_login'] = (node) => broadcasterLogin = node.getStringValue();
        deserializerMap['indexed_since'] = (node) => indexedSince = node.getStringValue();
        deserializerMap['streams'] = (node) => streams = node.getCollectionOfObjectValues<TwitchRecordedStream>(TwitchRecordedStream.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['warnings'] = (node) => warnings = node.getCollectionOfObjectValues<StreamIndexWarning>(StreamIndexWarning.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('broadcaster_id', broadcasterId);
        writer.writeStringValue('broadcaster_login', broadcasterLogin);
        writer.writeStringValue('indexed_since', indexedSince);
        writer.writeCollectionOfObjectValues<TwitchRecordedStream>('streams', streams);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeCollectionOfObjectValues<StreamIndexWarning>('warnings', warnings);
    }
}
