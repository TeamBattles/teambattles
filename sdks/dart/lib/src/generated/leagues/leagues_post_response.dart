// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/league_summary.dart';
import './leagues_post_response_pagination.dart';

/// auto generated
class LeaguesPostResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The leagues property
    Iterable<LeagueSummary>? leagues;
    ///  The pagination property
    LeaguesPostResponsePagination? pagination;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeaguesPostResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return LeaguesPostResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['leagues'] = (node) => leagues = node.getCollectionOfObjectValues<LeagueSummary>(LeagueSummary.createFromDiscriminatorValue);
        deserializerMap['pagination'] = (node) => pagination = node.getObjectValue<LeaguesPostResponsePagination>(LeaguesPostResponsePagination.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeagueSummary>('leagues', leagues);
        writer.writeObjectValue<LeaguesPostResponsePagination>('pagination', pagination);
        writer.writeStringValue('timestamp', timestamp);
    }
}
