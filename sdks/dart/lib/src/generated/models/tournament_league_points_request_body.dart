// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_placement_points_entry.dart';

/// auto generated
/// League placement-points configuration.
class TournamentLeaguePointsRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
    Iterable<TournamentPlacementPointsEntry>? leaguePointsByPlacement;
    ///  Whether finishing this tournament awards league points to the league season.
    bool? leaguePointsEnabled;
    /// Instantiates a new [TournamentLeaguePointsRequestBody] and sets the default values.
    TournamentLeaguePointsRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentLeaguePointsRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentLeaguePointsRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['leaguePointsByPlacement'] = (node) => leaguePointsByPlacement = node.getCollectionOfObjectValues<TournamentPlacementPointsEntry>(TournamentPlacementPointsEntry.createFromDiscriminatorValue);
        deserializerMap['leaguePointsEnabled'] = (node) => leaguePointsEnabled = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<TournamentPlacementPointsEntry>('leaguePointsByPlacement', leaguePointsByPlacement);
        writer.writeBoolValue('leaguePointsEnabled', value:leaguePointsEnabled);
        writer.writeAdditionalData(additionalData);
    }
}
