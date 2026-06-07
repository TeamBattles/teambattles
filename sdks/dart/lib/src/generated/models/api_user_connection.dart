// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_connection_connected_at.dart';
import './api_user_connection_url.dart';
import './api_user_connection_username.dart';

/// auto generated
/// API-safe public account connection.
class ApiUserConnection implements Parsable {
    ///  The connectedAt property
    ApiUserConnectionConnectedAt? connectedAt;
    ///  Connection ID.
    String? id;
    ///  The isPrimary property
    bool? isPrimary;
    ///  The isVerified property
    bool? isVerified;
    ///  Connected platform.
    String? platform;
    ///  The url property
    ApiUserConnectionUrl? url;
    ///  The username property
    ApiUserConnectionUsername? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserConnection createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiUserConnection();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['connectedAt'] = (node) => connectedAt = node.getObjectValue<ApiUserConnectionConnectedAt>(ApiUserConnectionConnectedAt.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isPrimary'] = (node) => isPrimary = node.getBoolValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['platform'] = (node) => platform = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getObjectValue<ApiUserConnectionUrl>(ApiUserConnectionUrl.createFromDiscriminatorValue);
        deserializerMap['username'] = (node) => username = node.getObjectValue<ApiUserConnectionUsername>(ApiUserConnectionUsername.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiUserConnectionConnectedAt>('connectedAt', connectedAt);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isPrimary', value:isPrimary);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeStringValue('platform', platform);
        writer.writeObjectValue<ApiUserConnectionUrl>('url', url);
        writer.writeObjectValue<ApiUserConnectionUsername>('username', username);
    }
}
