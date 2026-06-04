// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './map_score_item_created_at.dart';
import './score_confirmer.dart';
import './score_submitter.dart';

/// auto generated
/// A single map's score entry.
class MapScoreItem implements Parsable {
    ///  The confirmedBy property
    ScoreConfirmer? confirmedBy;
    ///  Creation time (ISO 8601).
    MapScoreItemCreatedAt? createdAt;
    ///  The creatorTeamScore property
    int? creatorTeamScore;
    ///  The mapId property
    String? mapId;
    ///  The mapIndex property
    int? mapIndex;
    ///  The opponentTeamScore property
    int? opponentTeamScore;
    ///  CONFIRMED or PENDING.
    String? scoreStatus;
    ///  The screenshotUrls property
    Iterable<String>? screenshotUrls;
    ///  The submittedBy property
    ScoreSubmitter? submittedBy;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MapScoreItem createFromDiscriminatorValue(ParseNode parseNode) {
        return MapScoreItem();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['confirmedBy'] = (node) => confirmedBy = node.getObjectValue<ScoreConfirmer>(ScoreConfirmer.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<MapScoreItemCreatedAt>(MapScoreItemCreatedAt.createFromDiscriminatorValue);
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getIntValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getIntValue();
        deserializerMap['scoreStatus'] = (node) => scoreStatus = node.getStringValue();
        deserializerMap['screenshotUrls'] = (node) => screenshotUrls = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['submittedBy'] = (node) => submittedBy = node.getObjectValue<ScoreSubmitter>(ScoreSubmitter.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ScoreConfirmer>('confirmedBy', confirmedBy);
        writer.writeObjectValue<MapScoreItemCreatedAt>('createdAt', createdAt);
        writer.writeIntValue('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('mapId', mapId);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeIntValue('opponentTeamScore', opponentTeamScore);
        writer.writeStringValue('scoreStatus', scoreStatus);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotUrls', screenshotUrls);
        writer.writeObjectValue<ScoreSubmitter>('submittedBy', submittedBy);
    }
}
