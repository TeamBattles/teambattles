// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Captain response to a tournament invite.
class TournamentInviteRespondBody implements AdditionalDataHolder, Parsable {
    ///  true to accept the invite and enter the tournament, false to decline it. A competitive ban blocks accepting but never declining.
    bool? accept;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  User IDs to register as the team's tournament roster. REQUIRED when accept is true and ignored when it is false. Every entry must be an ACTIVE member of the invited team, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small.
    Iterable<String>? roster;
    /// Instantiates a new [TournamentInviteRespondBody] and sets the default values.
    TournamentInviteRespondBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentInviteRespondBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentInviteRespondBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accept'] = (node) => accept = node.getBoolValue();
        deserializerMap['roster'] = (node) => roster = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('accept', value:accept);
        writer.writeCollectionOfPrimitiveValues<String?>('roster', roster);
        writer.writeAdditionalData(additionalData);
    }
}
