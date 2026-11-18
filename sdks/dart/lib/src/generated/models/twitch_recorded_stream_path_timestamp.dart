// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_recorded_stream_path_timestamp_member1.dart';

/// auto generated
/// Composed type wrapper for classes [int?], [TwitchRecordedStreamPathTimestampMember1]
class TwitchRecordedStreamPathTimestamp implements Parsable {
    ///  Composed type representation for type [int?]
    int? integer;
    ///  Composed type representation for type [TwitchRecordedStreamPathTimestampMember1]
    TwitchRecordedStreamPathTimestampMember1? twitchRecordedStreamPathTimestampMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchRecordedStreamPathTimestamp createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TwitchRecordedStreamPathTimestamp();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.twitchRecordedStreamPathTimestampMember1 = TwitchRecordedStreamPathTimestampMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(twitchRecordedStreamPathTimestampMember1 != null){twitchRecordedStreamPathTimestampMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(integer != null) {
            writer.writeIntValue(null, integer);
        }
        else {
            writer.writeObjectValue<TwitchRecordedStreamPathTimestampMember1>(null, twitchRecordedStreamPathTimestampMember1);
        }
    }
}
