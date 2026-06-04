// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './seasons_request_body_status.dart';

/// auto generated
/// Game and status filters for league seasons.
class SeasonsRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Filter seasons to a specific game id.
    String? gameId;
    ///  Filter seasons by lifecycle status.
    SeasonsRequestBodyStatus? status;
    /// Instantiates a new [SeasonsRequestBody] and sets the default values.
    SeasonsRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SeasonsRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return SeasonsRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<SeasonsRequestBodyStatus>((stringValue) => SeasonsRequestBodyStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeEnumValue<SeasonsRequestBodyStatus>('status', status, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
