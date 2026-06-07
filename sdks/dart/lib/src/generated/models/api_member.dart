// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_member_joined_at.dart';
import './api_user_profile.dart';

/// auto generated
/// API-safe team or organization member.
class ApiMember implements Parsable {
    ///  Membership row ID.
    String? id;
    ///  The joinedAt property
    ApiMemberJoinedAt? joinedAt;
    ///  Role label within the team or organization.
    String? role;
    ///  API-safe public user profile.
    ApiUserProfile? user;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMember createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiMember();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['joinedAt'] = (node) => joinedAt = node.getObjectValue<ApiMemberJoinedAt>(ApiMemberJoinedAt.createFromDiscriminatorValue);
        deserializerMap['role'] = (node) => role = node.getStringValue();
        deserializerMap['user'] = (node) => user = node.getObjectValue<ApiUserProfile>(ApiUserProfile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiMemberJoinedAt>('joinedAt', joinedAt);
        writer.writeStringValue('role', role);
        writer.writeObjectValue<ApiUserProfile>('user', user);
    }
}
