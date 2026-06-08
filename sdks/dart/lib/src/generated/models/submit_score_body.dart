// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Map score submission payload for a single map.
class SubmitScoreBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Creator team score (integer, 0-1000).
    int? creatorTeamScore;
    ///  Map identifier string (e.g. dust2).
    String? mapId;
    ///  Zero-based map index. Must be a non-negative integer.
    int? mapIndex;
    ///  Accepted/opponent team score (integer, 0-1000).
    int? opponentTeamScore;
    ///  Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
    Iterable<String>? screenshotStorageIds;
    ///  Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
    Iterable<String>? screenshotUrls;
    /// Instantiates a new [SubmitScoreBody] and sets the default values.
    SubmitScoreBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SubmitScoreBody createFromDiscriminatorValue(ParseNode parseNode) {
        return SubmitScoreBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getIntValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getIntValue();
        deserializerMap['screenshotStorageIds'] = (node) => screenshotStorageIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['screenshotUrls'] = (node) => screenshotUrls = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('mapId', mapId);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeIntValue('opponentTeamScore', opponentTeamScore);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotStorageIds', screenshotStorageIds);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotUrls', screenshotUrls);
        writer.writeAdditionalData(additionalData);
    }
}
