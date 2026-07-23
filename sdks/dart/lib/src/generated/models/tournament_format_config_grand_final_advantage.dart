// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format_config_grand_final_advantage_type.dart';

/// auto generated
class TournamentFormatConfigGrandFinalAdvantage implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The type property
    TournamentFormatConfigGrandFinalAdvantageType? type_;
    ///  Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
    int? winHeadstart;
    /// Instantiates a new [TournamentFormatConfigGrandFinalAdvantage] and sets the default values.
    TournamentFormatConfigGrandFinalAdvantage() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFormatConfigGrandFinalAdvantage createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentFormatConfigGrandFinalAdvantage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['type'] = (node) => type_ = node.getEnumValue<TournamentFormatConfigGrandFinalAdvantageType>((stringValue) => TournamentFormatConfigGrandFinalAdvantageType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['winHeadstart'] = (node) => winHeadstart = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentFormatConfigGrandFinalAdvantageType>('type', type_, (e) => e?.value);
        writer.writeIntValue('winHeadstart', winHeadstart);
        writer.writeAdditionalData(additionalData);
    }
}
