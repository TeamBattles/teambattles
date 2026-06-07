// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_detail.dart';

/// auto generated
/// Ongoing matches for the API key owner's active teams.
class OngoingMatchesResponse implements Parsable {
    ///  The matches property
    Iterable<ApiMatchDetail>? matches;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OngoingMatchesResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return OngoingMatchesResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['matches'] = (node) => matches = node.getCollectionOfObjectValues<ApiMatchDetail>(ApiMatchDetail.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ApiMatchDetail>('matches', matches);
        writer.writeStringValue('timestamp', timestamp);
    }
}
