// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_own_connection_connected_at.dart';
import './api_own_connection_gaming_platform.dart';
import './api_own_connection_region.dart';
import './api_own_connection_url.dart';
import './api_own_connection_username.dart';

/// auto generated
/// API-safe connection for the API key owner, including private fields.
class ApiOwnConnection implements Parsable {
    ///  The connectedAt property
    ApiOwnConnectionConnectedAt? connectedAt;
    ///  Gaming platform (e.g. pc / console), when set.
    ApiOwnConnectionGamingPlatform? gamingPlatform;
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
    ApiOwnConnectionRegion? region;
    ///  Whether the owner has chosen to show this connection on their profile.
    bool? showOnProfile;
    ///  The url property
    ApiOwnConnectionUrl? url;
    ///  The username property
    ApiOwnConnectionUsername? username;
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
        deserializerMap['gamingPlatform'] = (node) => gamingPlatform = node.getObjectValue<ApiOwnConnectionGamingPlatform>(ApiOwnConnectionGamingPlatform.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isPrimary'] = (node) => isPrimary = node.getBoolValue();
        deserializerMap['isSelfReported'] = (node) => isSelfReported = node.getBoolValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['platform'] = (node) => platform = node.getStringValue();
        deserializerMap['region'] = (node) => region = node.getObjectValue<ApiOwnConnectionRegion>(ApiOwnConnectionRegion.createFromDiscriminatorValue);
        deserializerMap['showOnProfile'] = (node) => showOnProfile = node.getBoolValue();
        deserializerMap['url'] = (node) => url = node.getObjectValue<ApiOwnConnectionUrl>(ApiOwnConnectionUrl.createFromDiscriminatorValue);
        deserializerMap['username'] = (node) => username = node.getObjectValue<ApiOwnConnectionUsername>(ApiOwnConnectionUsername.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiOwnConnectionConnectedAt>('connectedAt', connectedAt);
        writer.writeObjectValue<ApiOwnConnectionGamingPlatform>('gamingPlatform', gamingPlatform);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isPrimary', value:isPrimary);
        writer.writeBoolValue('isSelfReported', value:isSelfReported);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeStringValue('platform', platform);
        writer.writeObjectValue<ApiOwnConnectionRegion>('region', region);
        writer.writeBoolValue('showOnProfile', value:showOnProfile);
        writer.writeObjectValue<ApiOwnConnectionUrl>('url', url);
        writer.writeObjectValue<ApiOwnConnectionUsername>('username', username);
    }
}
