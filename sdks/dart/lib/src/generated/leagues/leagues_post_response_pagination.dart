// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class LeaguesPostResponsePagination implements Parsable {
    ///  The limit property
    int? limit;
    ///  The page property
    int? page;
    ///  The total property
    int? total;
    ///  The totalPages property
    int? totalPages;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeaguesPostResponsePagination createFromDiscriminatorValue(ParseNode parseNode) {
        return LeaguesPostResponsePagination();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['page'] = (node) => page = node.getIntValue();
        deserializerMap['total'] = (node) => total = node.getIntValue();
        deserializerMap['totalPages'] = (node) => totalPages = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('limit', limit);
        writer.writeIntValue('page', page);
        writer.writeIntValue('total', total);
        writer.writeIntValue('totalPages', totalPages);
    }
}
