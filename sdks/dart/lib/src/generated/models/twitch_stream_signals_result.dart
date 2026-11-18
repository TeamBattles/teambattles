// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './twitch_stream_signals_result_rejected.dart';

/// auto generated
/// What the stream index did with the channels it was sent.
class TwitchStreamSignalsResult implements Parsable {
    ///  Channels now being recorded: ones already indexed (renewed) plus ones this call added.
    int? accepted;
    ///  Channels this call added to the index.
    int? added;
    ///  Channels that were not taken, each with its code.
    Iterable<TwitchStreamSignalsResultRejected>? rejected;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchStreamSignalsResult createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchStreamSignalsResult();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accepted'] = (node) => accepted = node.getIntValue();
        deserializerMap['added'] = (node) => added = node.getIntValue();
        deserializerMap['rejected'] = (node) => rejected = node.getCollectionOfObjectValues<TwitchStreamSignalsResultRejected>(TwitchStreamSignalsResultRejected.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('accepted', accepted);
        writer.writeIntValue('added', added);
        writer.writeCollectionOfObjectValues<TwitchStreamSignalsResultRejected>('rejected', rejected);
    }
}
