// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_penalty_request_body_type.dart';

/// auto generated
/// Creates a league team penalty.
class CreatePenaltyRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Game ID for the league penalty.
    String? gameId;
    ///  Reason for the penalty.
    String? reason;
    ///  Optional league season ID for the penalty.
    String? seasonId;
    ///  Team ID receiving the penalty.
    String? teamId;
    ///  Penalty type.
    CreatePenaltyRequestBodyType? type_;
    ///  Point value for POINT_DEDUCTION (integer, 1-1000).
    int? value;
    /// Instantiates a new [CreatePenaltyRequestBody] and sets the default values.
    CreatePenaltyRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreatePenaltyRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreatePenaltyRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        deserializerMap['seasonId'] = (node) => seasonId = node.getStringValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['type'] = (node) => type_ = node.getEnumValue<CreatePenaltyRequestBodyType>((stringValue) => CreatePenaltyRequestBodyType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['value'] = (node) => value = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('reason', reason);
        writer.writeStringValue('seasonId', seasonId);
        writer.writeStringValue('teamId', teamId);
        writer.writeEnumValue<CreatePenaltyRequestBodyType>('type', type_, (e) => e?.value);
        writer.writeIntValue('value', value);
        writer.writeAdditionalData(additionalData);
    }
}
