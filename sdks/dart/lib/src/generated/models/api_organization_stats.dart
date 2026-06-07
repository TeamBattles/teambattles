// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// API-safe organization aggregate stats.
class ApiOrganizationStats implements Parsable {
    ///  The losses property
    int? losses;
    ///  The matchesPlayed property
    int? matchesPlayed;
    ///  The members property
    int? members;
    ///  The organizationId property
    String? organizationId;
    ///  The teams property
    int? teams;
    ///  The winRate property
    double? winRate;
    ///  The wins property
    int? wins;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiOrganizationStats createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiOrganizationStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['losses'] = (node) => losses = node.getIntValue();
        deserializerMap['matchesPlayed'] = (node) => matchesPlayed = node.getIntValue();
        deserializerMap['members'] = (node) => members = node.getIntValue();
        deserializerMap['organizationId'] = (node) => organizationId = node.getStringValue();
        deserializerMap['teams'] = (node) => teams = node.getIntValue();
        deserializerMap['winRate'] = (node) => winRate = node.getDoubleValue();
        deserializerMap['wins'] = (node) => wins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('losses', losses);
        writer.writeIntValue('matchesPlayed', matchesPlayed);
        writer.writeIntValue('members', members);
        writer.writeStringValue('organizationId', organizationId);
        writer.writeIntValue('teams', teams);
        writer.writeDoubleValue('winRate', winRate);
        writer.writeIntValue('wins', wins);
    }
}
