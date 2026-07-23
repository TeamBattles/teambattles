// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Tournament entry payload for a team the caller leads.
class TournamentTeamEntryBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
    Iterable<String>? roster;
    /// Instantiates a new [TournamentTeamEntryBody] and sets the default values.
    TournamentTeamEntryBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentTeamEntryBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentTeamEntryBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['roster'] = (node) => roster = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('roster', roster);
        writer.writeAdditionalData(additionalData);
    }
}
