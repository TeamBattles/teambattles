// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Creates a league team ban.
class CreateBanRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Expiration timestamp for temporary bans, in epoch milliseconds.
    double? expiresAt;
    ///  Whether the ban never expires.
    bool? isPermanent;
    ///  Reason for the ban.
    String? reason;
    ///  Team ID to ban from the league.
    String? teamId;
    /// Instantiates a new [CreateBanRequestBody] and sets the default values.
    CreateBanRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateBanRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateBanRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['expiresAt'] = (node) => expiresAt = node.getDoubleValue();
        deserializerMap['isPermanent'] = (node) => isPermanent = node.getBoolValue();
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('expiresAt', expiresAt);
        writer.writeBoolValue('isPermanent', value:isPermanent);
        writer.writeStringValue('reason', reason);
        writer.writeStringValue('teamId', teamId);
        writer.writeAdditionalData(additionalData);
    }
}
