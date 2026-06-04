// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bans_request_body_status.dart';

/// auto generated
/// Status filter for league team bans.
class BansRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Filter bans by computed status. Defaults to all.
    BansRequestBodyStatus? status;
    /// Instantiates a new [BansRequestBody] and sets the default values.
    BansRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static BansRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return BansRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['status'] = (node) => status = node.getEnumValue<BansRequestBodyStatus>((stringValue) => BansRequestBodyStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<BansRequestBodyStatus>('status', status, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
