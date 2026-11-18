// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_recorded_stream_title_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TwitchRecordedStreamTitleMember1]
class TwitchRecordedStreamTitle implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TwitchRecordedStreamTitleMember1]
    TwitchRecordedStreamTitleMember1? twitchRecordedStreamTitleMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchRecordedStreamTitle createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TwitchRecordedStreamTitle();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.twitchRecordedStreamTitleMember1 = TwitchRecordedStreamTitleMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(twitchRecordedStreamTitleMember1 != null){twitchRecordedStreamTitleMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<TwitchRecordedStreamTitleMember1>(null, twitchRecordedStreamTitleMember1);
        }
    }
}
