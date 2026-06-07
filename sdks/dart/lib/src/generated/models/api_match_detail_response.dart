// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_detail.dart';

/// auto generated
/// SP-2 match detail response.
class ApiMatchDetailResponse implements Parsable {
    ///  Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
    ApiMatchDetail? match;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMatchDetailResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiMatchDetailResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['match'] = (node) => match = node.getObjectValue<ApiMatchDetail>(ApiMatchDetail.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiMatchDetail>('match', match);
        writer.writeStringValue('timestamp', timestamp);
    }
}
