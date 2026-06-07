// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// API-safe aggregate user stats.
class ApiUserStats implements Parsable {
    ///  The bestStreak property
    int? bestStreak;
    ///  The currentStreak property
    int? currentStreak;
    ///  The draws property
    int? draws;
    ///  The experience property
    double? experience;
    ///  The losses property
    int? losses;
    ///  The matchesPlayed property
    int? matchesPlayed;
    ///  User ID these stats belong to.
    String? userId;
    ///  The winRate property
    double? winRate;
    ///  The wins property
    int? wins;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserStats createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiUserStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bestStreak'] = (node) => bestStreak = node.getIntValue();
        deserializerMap['currentStreak'] = (node) => currentStreak = node.getIntValue();
        deserializerMap['draws'] = (node) => draws = node.getIntValue();
        deserializerMap['experience'] = (node) => experience = node.getDoubleValue();
        deserializerMap['losses'] = (node) => losses = node.getIntValue();
        deserializerMap['matchesPlayed'] = (node) => matchesPlayed = node.getIntValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        deserializerMap['winRate'] = (node) => winRate = node.getDoubleValue();
        deserializerMap['wins'] = (node) => wins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('bestStreak', bestStreak);
        writer.writeIntValue('currentStreak', currentStreak);
        writer.writeIntValue('draws', draws);
        writer.writeDoubleValue('experience', experience);
        writer.writeIntValue('losses', losses);
        writer.writeIntValue('matchesPlayed', matchesPlayed);
        writer.writeStringValue('userId', userId);
        writer.writeDoubleValue('winRate', winRate);
        writer.writeIntValue('wins', wins);
    }
}
