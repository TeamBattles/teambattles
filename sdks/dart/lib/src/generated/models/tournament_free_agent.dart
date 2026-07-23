// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_free_agent_avatar_url.dart';
import './tournament_free_agent_viewer_offer_status.dart';

/// auto generated
/// An available free agent.
class TournamentFreeAgent implements Parsable {
    ///  Avatar image URL.
    TournamentFreeAgentAvatarUrl? avatarUrl;
    ///  Pool join time (epoch milliseconds).
    double? createdAt;
    ///  Free-agent row ID.
    String? id;
    ///  Display name.
    String? name;
    ///  Free-text note the agent supplied.
    String? note;
    ///  User ID of the free agent.
    String? userId;
    ///  Username.
    String? username;
    ///  PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
    TournamentFreeAgentViewerOfferStatus? viewerOfferStatus;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFreeAgent createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentFreeAgent();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<TournamentFreeAgentAvatarUrl>(TournamentFreeAgentAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['note'] = (node) => note = node.getStringValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        deserializerMap['viewerOfferStatus'] = (node) => viewerOfferStatus = node.getObjectValue<TournamentFreeAgentViewerOfferStatus>(TournamentFreeAgentViewerOfferStatus.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentFreeAgentAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeStringValue('note', note);
        writer.writeStringValue('userId', userId);
        writer.writeStringValue('username', username);
        writer.writeObjectValue<TournamentFreeAgentViewerOfferStatus>('viewerOfferStatus', viewerOfferStatus);
    }
}
