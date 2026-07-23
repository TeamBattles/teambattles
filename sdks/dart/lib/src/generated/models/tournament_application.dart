// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_application_team_avatar_url.dart';

/// auto generated
/// A team application awaiting organizer review.
class TournamentApplication implements Parsable {
    ///  User who submitted the application, when recorded.
    String? appliedByUserId;
    ///  Participant ID of the pending application.
    String? id;
    ///  Application time (epoch milliseconds).
    double? registeredAt;
    ///  Applying team's avatar URL.
    TournamentApplicationTeamAvatarUrl? teamAvatarUrl;
    ///  Applying team's ID.
    String? teamId;
    ///  Applying team's display name.
    String? teamName;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentApplication createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentApplication();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['appliedByUserId'] = (node) => appliedByUserId = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['registeredAt'] = (node) => registeredAt = node.getDoubleValue();
        deserializerMap['teamAvatarUrl'] = (node) => teamAvatarUrl = node.getObjectValue<TournamentApplicationTeamAvatarUrl>(TournamentApplicationTeamAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamName'] = (node) => teamName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('appliedByUserId', appliedByUserId);
        writer.writeStringValue('id', id);
        writer.writeDoubleValue('registeredAt', registeredAt);
        writer.writeObjectValue<TournamentApplicationTeamAvatarUrl>('teamAvatarUrl', teamAvatarUrl);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('teamName', teamName);
    }
}
