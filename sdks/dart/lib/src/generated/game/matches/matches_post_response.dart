// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/game_match.dart';
import './matches_post_response_pagination.dart';

/// auto generated
class MatchesPostResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The matches property
    Iterable<GameMatch>? matches;
    ///  The pagination property
    MatchesPostResponsePagination? pagination;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchesPostResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return MatchesPostResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['matches'] = (node) => matches = node.getCollectionOfObjectValues<GameMatch>(GameMatch.createFromDiscriminatorValue);
        deserializerMap['pagination'] = (node) => pagination = node.getObjectValue<MatchesPostResponsePagination>(MatchesPostResponsePagination.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<GameMatch>('matches', matches);
        writer.writeObjectValue<MatchesPostResponsePagination>('pagination', pagination);
        writer.writeStringValue('timestamp', timestamp);
    }
}
