// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_detail.dart';
import './match_discover_page_next_cursor.dart';

/// auto generated
/// SP-2 open-match discovery page.
class MatchDiscoverPage implements Parsable {
    ///  The data property
    Iterable<ApiMatchDetail>? data;
    ///  The hasMore property
    bool? hasMore;
    ///  The nextCursor property
    MatchDiscoverPageNextCursor? nextCursor;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchDiscoverPage createFromDiscriminatorValue(ParseNode parseNode) {
        return MatchDiscoverPage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['data'] = (node) => data = node.getCollectionOfObjectValues<ApiMatchDetail>(ApiMatchDetail.createFromDiscriminatorValue);
        deserializerMap['hasMore'] = (node) => hasMore = node.getBoolValue();
        deserializerMap['nextCursor'] = (node) => nextCursor = node.getObjectValue<MatchDiscoverPageNextCursor>(MatchDiscoverPageNextCursor.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ApiMatchDetail>('data', data);
        writer.writeBoolValue('hasMore', value:hasMore);
        writer.writeObjectValue<MatchDiscoverPageNextCursor>('nextCursor', nextCursor);
        writer.writeStringValue('timestamp', timestamp);
    }
}
