// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TwitchStreamSignalsResultRejected implements Parsable {
    ///  Why: error_twitch_channel_not_found or error_stream_index_add_limit.
    String? code;
    ///  Twitch user id that was not taken.
    String? id;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchStreamSignalsResultRejected createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchStreamSignalsResultRejected();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['code'] = (node) => code = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('code', code);
        writer.writeStringValue('id', id);
    }
}
