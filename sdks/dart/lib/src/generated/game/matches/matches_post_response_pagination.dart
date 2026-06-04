// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './matches_post_response_pagination_cursor.dart';

/// auto generated
class MatchesPostResponsePagination implements Parsable {
    ///  The cursor property
    MatchesPostResponsePaginationCursor? cursor;
    ///  The hasMore property
    bool? hasMore;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchesPostResponsePagination createFromDiscriminatorValue(ParseNode parseNode) {
        return MatchesPostResponsePagination();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['cursor'] = (node) => cursor = node.getObjectValue<MatchesPostResponsePaginationCursor>(MatchesPostResponsePaginationCursor.createFromDiscriminatorValue);
        deserializerMap['hasMore'] = (node) => hasMore = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<MatchesPostResponsePaginationCursor>('cursor', cursor);
        writer.writeBoolValue('hasMore', value:hasMore);
    }
}
