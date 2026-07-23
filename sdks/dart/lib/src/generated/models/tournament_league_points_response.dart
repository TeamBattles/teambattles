// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_league_points_response_placement_count.dart';

/// auto generated
/// The league placement-points configuration now in effect.
class TournamentLeaguePointsResponse implements Parsable {
    ///  The leaguePointsEnabled property
    bool? leaguePointsEnabled;
    ///  Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
    TournamentLeaguePointsResponsePlacementCount? placementCount;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentLeaguePointsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentLeaguePointsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['leaguePointsEnabled'] = (node) => leaguePointsEnabled = node.getBoolValue();
        deserializerMap['placementCount'] = (node) => placementCount = node.getObjectValue<TournamentLeaguePointsResponsePlacementCount>(TournamentLeaguePointsResponsePlacementCount.createFromDiscriminatorValue);
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('leaguePointsEnabled', value:leaguePointsEnabled);
        writer.writeObjectValue<TournamentLeaguePointsResponsePlacementCount>('placementCount', placementCount);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
