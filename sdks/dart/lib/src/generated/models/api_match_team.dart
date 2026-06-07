// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_team_avatar_url.dart';
import './api_match_team_score.dart';

/// auto generated
/// Team summary embedded in SP-2 match reads.
class ApiMatchTeam implements Parsable {
    ///  Team avatar URL.
    ApiMatchTeamAvatarUrl? avatarUrl;
    ///  Team ID.
    String? id;
    ///  Team name.
    String? name;
    ///  The score property
    ApiMatchTeamScore? score;
    ///  Team tag (short identifier).
    String? tag;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMatchTeam createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiMatchTeam();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiMatchTeamAvatarUrl>(ApiMatchTeamAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['score'] = (node) => score = node.getObjectValue<ApiMatchTeamScore>(ApiMatchTeamScore.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiMatchTeamAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ApiMatchTeamScore>('score', score);
        writer.writeStringValue('tag', tag);
    }
}
