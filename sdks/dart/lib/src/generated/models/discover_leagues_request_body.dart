// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Filters and offset pagination for discovering leagues.
class DiscoverLeaguesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Filter to leagues that include this game id.
    String? gameId;
    ///  Page size (1-50). Defaults to 12.
    int? limit;
    ///  1-based page number. Defaults to 1.
    int? page;
    ///  Free-text search across league names.
    String? search;
    /// Instantiates a new [DiscoverLeaguesRequestBody] and sets the default values.
    DiscoverLeaguesRequestBody() :  
        additionalData = {},
        limit = 12,
        page = 1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DiscoverLeaguesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return DiscoverLeaguesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['page'] = (node) => page = node.getIntValue();
        deserializerMap['search'] = (node) => search = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeIntValue('limit', limit);
        writer.writeIntValue('page', page);
        writer.writeStringValue('search', search);
        writer.writeAdditionalData(additionalData);
    }
}
