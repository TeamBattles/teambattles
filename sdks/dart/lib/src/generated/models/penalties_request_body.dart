// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './penalties_request_body_type.dart';

/// auto generated
/// Type, team, game, and limit filters for league penalties and cooldowns.
class PenaltiesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Filter penalties to a specific game id.
    String? gameId;
    ///  Maximum number of penalties to return (1-100). Defaults to 50.
    int? limit;
    ///  Filter penalties to a specific team id.
    String? teamId;
    ///  Which record kinds to return. Defaults to all.
    PenaltiesRequestBodyType? type_;
    /// Instantiates a new [PenaltiesRequestBody] and sets the default values.
    PenaltiesRequestBody() :  
        additionalData = {},
        limit = 50,
        type_ = PenaltiesRequestBodyType.all;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static PenaltiesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return PenaltiesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['type'] = (node) => type_ = node.getEnumValue<PenaltiesRequestBodyType>((stringValue) => PenaltiesRequestBodyType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('gameId', gameId);
        writer.writeIntValue('limit', limit);
        writer.writeStringValue('teamId', teamId);
        writer.writeEnumValue<PenaltiesRequestBodyType>('type', type_, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
