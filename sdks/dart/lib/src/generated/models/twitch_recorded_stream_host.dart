// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_recorded_stream_host_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TwitchRecordedStreamHostMember1]
class TwitchRecordedStreamHost implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TwitchRecordedStreamHostMember1]
    TwitchRecordedStreamHostMember1? twitchRecordedStreamHostMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchRecordedStreamHost createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TwitchRecordedStreamHost();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.twitchRecordedStreamHostMember1 = TwitchRecordedStreamHostMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(twitchRecordedStreamHostMember1 != null){twitchRecordedStreamHostMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TwitchRecordedStreamHostMember1>(null, twitchRecordedStreamHostMember1);
        }
    }
}
