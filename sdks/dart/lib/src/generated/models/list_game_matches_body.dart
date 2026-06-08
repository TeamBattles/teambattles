// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
class ListGameMatchesBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Opaque continuation cursor from a prior page's pagination.cursor.
    String? cursor;
    ///  Page size (1-100, enforced by the handler). Defaults to the handler's internal default.
    double? limit;
    ///  Optional MatchStatus filter (e.g. IN_PROGRESS).
    String? status;
    /// Instantiates a new [ListGameMatchesBody] and sets the default values.
    ListGameMatchesBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ListGameMatchesBody createFromDiscriminatorValue(ParseNode parseNode) {
        return ListGameMatchesBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['cursor'] = (node) => cursor = node.getStringValue();
        deserializerMap['limit'] = (node) => limit = node.getDoubleValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('cursor', cursor);
        writer.writeDoubleValue('limit', limit);
        writer.writeStringValue('status', status);
        writer.writeAdditionalData(additionalData);
    }
}
