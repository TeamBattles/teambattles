// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_league_points_response_placement_count_member1.dart';

/// auto generated
/// Composed type wrapper for classes [int?], [TournamentLeaguePointsResponsePlacementCountMember1]
class TournamentLeaguePointsResponsePlacementCount implements Parsable {
    ///  Composed type representation for type [int?]
    int? integer;
    ///  Composed type representation for type [TournamentLeaguePointsResponsePlacementCountMember1]
    TournamentLeaguePointsResponsePlacementCountMember1? tournamentLeaguePointsResponsePlacementCountMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentLeaguePointsResponsePlacementCount createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TournamentLeaguePointsResponsePlacementCount();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.tournamentLeaguePointsResponsePlacementCountMember1 = TournamentLeaguePointsResponsePlacementCountMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(tournamentLeaguePointsResponsePlacementCountMember1 != null){tournamentLeaguePointsResponsePlacementCountMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(integer != null) {
            writer.writeIntValue(null, integer);
        }
        else {
            writer.writeObjectValue<TournamentLeaguePointsResponsePlacementCountMember1>(null, tournamentLeaguePointsResponsePlacementCountMember1);
        }
    }
}
