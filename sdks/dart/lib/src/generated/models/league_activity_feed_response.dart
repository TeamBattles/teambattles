// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A paginated league activity feed.
class LeagueActivityFeedResponse implements Parsable {
    ///  The activities property
    UntypedNode? activities;
    ///  The hasMore property
    bool? hasMore;
    ///  The nextCursor property
    String? nextCursor;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueActivityFeedResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueActivityFeedResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activities'] = (node) => activities = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['hasMore'] = (node) => hasMore = node.getBoolValue();
        deserializerMap['nextCursor'] = (node) => nextCursor = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<UntypedNode>('activities', activities);
        writer.writeBoolValue('hasMore', value:hasMore);
        writer.writeStringValue('nextCursor', nextCursor);
        writer.writeStringValue('timestamp', timestamp);
    }
}
