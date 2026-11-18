// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './stream_signals_body_channels.dart';

/// auto generated
/// Twitch channels to keep recording, each with why it matters to a user.
class StreamSignalsBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  1 to 100 channels.
    Iterable<StreamSignalsBodyChannels>? channels;
    /// Instantiates a new [StreamSignalsBody] and sets the default values.
    StreamSignalsBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static StreamSignalsBody createFromDiscriminatorValue(ParseNode parseNode) {
        return StreamSignalsBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['channels'] = (node) => channels = node.getCollectionOfObjectValues<StreamSignalsBodyChannels>(StreamSignalsBodyChannels.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<StreamSignalsBodyChannels>('channels', channels);
        writer.writeAdditionalData(additionalData);
    }
}
