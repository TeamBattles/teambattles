// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Map score submission payload for a single map.
class SubmitScoreBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Creator team score. Must be a non-negative number.
    double? creatorTeamScore;
    ///  Map identifier string (e.g. dust2).
    String? mapId;
    ///  Zero-based map index. Must be a non-negative integer.
    int? mapIndex;
    ///  Accepted/opponent team score. Must be a non-negative number.
    double? opponentTeamScore;
    ///  Optional screenshot URLs for the map result.
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
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getDoubleValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getDoubleValue();
        deserializerMap['screenshotUrls'] = (node) => screenshotUrls = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('mapId', mapId);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeDoubleValue('opponentTeamScore', opponentTeamScore);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotUrls', screenshotUrls);
        writer.writeAdditionalData(additionalData);
    }
}
