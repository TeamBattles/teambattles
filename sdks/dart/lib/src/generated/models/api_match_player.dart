// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_match_player_attendance_status.dart';
import './api_match_player_roster_type.dart';

/// auto generated
/// Player row for a participant-gated match.
class ApiMatchPlayer implements Parsable {
    ///  The attendanceStatus property
    ApiMatchPlayerAttendanceStatus? attendanceStatus;
    ///  The avatarUrl property
    String? avatarUrl;
    ///  The checkedInAt property
    String? checkedInAt;
    ///  The id property
    String? id;
    ///  The isCheckedIn property
    bool? isCheckedIn;
    ///  The name property
    String? name;
    ///  The rosterType property
    ApiMatchPlayerRosterType? rosterType;
    ///  The teamId property
    String? teamId;
    ///  The userId property
    String? userId;
    ///  The username property
    String? username;
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
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getStringValue();
        deserializerMap['checkedInAt'] = (node) => checkedInAt = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isCheckedIn'] = (node) => isCheckedIn = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['rosterType'] = (node) => rosterType = node.getEnumValue<ApiMatchPlayerRosterType>((stringValue) => ApiMatchPlayerRosterType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<ApiMatchPlayerAttendanceStatus>('attendanceStatus', attendanceStatus, (e) => e?.value);
        writer.writeStringValue('avatarUrl', avatarUrl);
        writer.writeStringValue('checkedInAt', checkedInAt);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isCheckedIn', value:isCheckedIn);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<ApiMatchPlayerRosterType>('rosterType', rosterType, (e) => e?.value);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('userId', userId);
        writer.writeStringValue('username', username);
    }
}
