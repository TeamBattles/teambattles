// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_recorded_stream_game_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TwitchRecordedStreamGameMember1]
class TwitchRecordedStreamGame implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TwitchRecordedStreamGameMember1]
    TwitchRecordedStreamGameMember1? twitchRecordedStreamGameMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchRecordedStreamGame createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TwitchRecordedStreamGame();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.twitchRecordedStreamGameMember1 = TwitchRecordedStreamGameMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(twitchRecordedStreamGameMember1 != null){twitchRecordedStreamGameMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TwitchRecordedStreamGameMember1>(null, twitchRecordedStreamGameMember1);
        }
    }
}
