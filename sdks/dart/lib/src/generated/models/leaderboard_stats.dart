// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Aggregate stats used for leaderboard ranking.
class LeaderboardStats implements Parsable {
    ///  The experience property
    double? experience;
    ///  The losses property
    int? losses;
    ///  The matchesPlayed property
    int? matchesPlayed;
    ///  The winRate property
    double? winRate;
    ///  The wins property
    int? wins;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeaderboardStats createFromDiscriminatorValue(ParseNode parseNode) {
        return LeaderboardStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['experience'] = (node) => experience = node.getDoubleValue();
        deserializerMap['losses'] = (node) => losses = node.getIntValue();
        deserializerMap['matchesPlayed'] = (node) => matchesPlayed = node.getIntValue();
        deserializerMap['winRate'] = (node) => winRate = node.getDoubleValue();
        deserializerMap['wins'] = (node) => wins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('experience', experience);
        writer.writeIntValue('losses', losses);
        writer.writeIntValue('matchesPlayed', matchesPlayed);
        writer.writeDoubleValue('winRate', winRate);
        writer.writeIntValue('wins', wins);
    }
}
