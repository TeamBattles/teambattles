// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_catalog_entry.dart';
import './api_objective.dart';

/// auto generated
/// Game catalog list response.
class ApiGameCatalogResponse implements Parsable {
    ///  The games property
    Iterable<ApiGameCatalogEntry>? games;
    ///  The objectives property
    Iterable<ApiObjective>? objectives;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameCatalogResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGameCatalogResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['games'] = (node) => games = node.getCollectionOfObjectValues<ApiGameCatalogEntry>(ApiGameCatalogEntry.createFromDiscriminatorValue);
        deserializerMap['objectives'] = (node) => objectives = node.getCollectionOfObjectValues<ApiObjective>(ApiObjective.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ApiGameCatalogEntry>('games', games);
        writer.writeCollectionOfObjectValues<ApiObjective>('objectives', objectives);
        writer.writeStringValue('timestamp', timestamp);
    }
}
