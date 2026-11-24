// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_own_connection_connected_at.dart';

/// auto generated
/// API-safe connection for the API key owner, including private fields.
class ApiOwnConnection implements Parsable {
    ///  The connectedAt property
    ApiOwnConnectionConnectedAt? connectedAt;
    ///  Gaming platform (e.g. pc / console), when set.
    String? gamingPlatform;
    ///  Connection ID.
    String? id;
    ///  The isPrimary property
    bool? isPrimary;
    ///  True when the connection was self-reported (ownership unverified).
    bool? isSelfReported;
    ///  The isVerified property
    bool? isVerified;
    ///  Connected platform.
    String? platform;
    ///  Connection region, when set.
    String? region;
    ///  Whether the owner has chosen to show this connection on their profile.
    bool? showOnProfile;
    ///  The url property
    String? url;
    ///  The username property
    String? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiOwnConnection createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiOwnConnection();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['connectedAt'] = (node) => connectedAt = node.getObjectValue<ApiOwnConnectionConnectedAt>(ApiOwnConnectionConnectedAt.createFromDiscriminatorValue);
        deserializerMap['gamingPlatform'] = (node) => gamingPlatform = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isPrimary'] = (node) => isPrimary = node.getBoolValue();
        deserializerMap['isSelfReported'] = (node) => isSelfReported = node.getBoolValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['platform'] = (node) => platform = node.getStringValue();
        deserializerMap['region'] = (node) => region = node.getStringValue();
        deserializerMap['showOnProfile'] = (node) => showOnProfile = node.getBoolValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiOwnConnectionConnectedAt>('connectedAt', connectedAt);
        writer.writeStringValue('gamingPlatform', gamingPlatform);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isPrimary', value:isPrimary);
        writer.writeBoolValue('isSelfReported', value:isSelfReported);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeStringValue('platform', platform);
        writer.writeStringValue('region', region);
        writer.writeBoolValue('showOnProfile', value:showOnProfile);
        writer.writeStringValue('url', url);
        writer.writeStringValue('username', username);
    }
}
