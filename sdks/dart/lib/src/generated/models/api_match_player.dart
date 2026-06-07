// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_player_attendance_status.dart';
import './api_match_player_avatar_url.dart';
import './api_match_player_checked_in_at.dart';
import './api_match_player_name.dart';
import './api_match_player_roster_type.dart';
import './api_match_player_username.dart';

/// auto generated
/// Player row for a participant-gated match.
class ApiMatchPlayer implements Parsable {
    ///  The attendanceStatus property
    ApiMatchPlayerAttendanceStatus? attendanceStatus;
    ///  The avatarUrl property
    ApiMatchPlayerAvatarUrl? avatarUrl;
    ///  The checkedInAt property
    ApiMatchPlayerCheckedInAt? checkedInAt;
    ///  The id property
    String? id;
    ///  The isCheckedIn property
    bool? isCheckedIn;
    ///  The name property
    ApiMatchPlayerName? name;
    ///  The rosterType property
    ApiMatchPlayerRosterType? rosterType;
    ///  The teamId property
    String? teamId;
    ///  The userId property
    String? userId;
    ///  The username property
    ApiMatchPlayerUsername? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiMatchPlayer createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiMatchPlayer();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attendanceStatus'] = (node) => attendanceStatus = node.getEnumValue<ApiMatchPlayerAttendanceStatus>((stringValue) => ApiMatchPlayerAttendanceStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiMatchPlayerAvatarUrl>(ApiMatchPlayerAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['checkedInAt'] = (node) => checkedInAt = node.getObjectValue<ApiMatchPlayerCheckedInAt>(ApiMatchPlayerCheckedInAt.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isCheckedIn'] = (node) => isCheckedIn = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getObjectValue<ApiMatchPlayerName>(ApiMatchPlayerName.createFromDiscriminatorValue);
        deserializerMap['rosterType'] = (node) => rosterType = node.getEnumValue<ApiMatchPlayerRosterType>((stringValue) => ApiMatchPlayerRosterType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getObjectValue<ApiMatchPlayerUsername>(ApiMatchPlayerUsername.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<ApiMatchPlayerAttendanceStatus>('attendanceStatus', attendanceStatus, (e) => e?.value);
        writer.writeObjectValue<ApiMatchPlayerAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeObjectValue<ApiMatchPlayerCheckedInAt>('checkedInAt', checkedInAt);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isCheckedIn', value:isCheckedIn);
        writer.writeObjectValue<ApiMatchPlayerName>('name', name);
        writer.writeEnumValue<ApiMatchPlayerRosterType>('rosterType', rosterType, (e) => e?.value);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('userId', userId);
        writer.writeObjectValue<ApiMatchPlayerUsername>('username', username);
    }
}
