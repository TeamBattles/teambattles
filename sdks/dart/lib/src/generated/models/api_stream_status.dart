// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_primary_stream.dart';
import './stream_platform.dart';

/// auto generated
/// API-safe live-stream status for a user.
class ApiStreamStatus implements Parsable {
    ///  Whether the user is live on any platform.
    bool? isLive;
    ///  Platforms the user is currently live on.
    Iterable<StreamPlatform>? platforms;
    ///  Primary stream details, or null when offline.
    ApiPrimaryStream? primaryStream;
    ///  User ID these stream details belong to.
    String? userId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStreamStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStreamStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['isLive'] = (node) => isLive = node.getBoolValue();
        deserializerMap['platforms'] = (node) => platforms = node.getCollectionOfEnumValues<StreamPlatform>((stringValue) => StreamPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['primaryStream'] = (node) => primaryStream = node.getObjectValue<ApiPrimaryStream>(ApiPrimaryStream.createFromDiscriminatorValue);
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('isLive', value:isLive);
        writer.writeCollectionOfEnumValues<StreamPlatform>('platforms', platforms, (e) => e?.value);
        writer.writeObjectValue<ApiPrimaryStream>('primaryStream', primaryStream);
        writer.writeStringValue('userId', userId);
    }
}
