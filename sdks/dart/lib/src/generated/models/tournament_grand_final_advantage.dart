// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_grand_final_advantage_type.dart';

/// auto generated
/// Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
class TournamentGrandFinalAdvantage implements Parsable {
    ///  Which advantage the winners-bracket champion carries into the grand final.
    TournamentGrandFinalAdvantageType? type_;
    ///  Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
    double? winHeadstart;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentGrandFinalAdvantage createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentGrandFinalAdvantage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['type'] = (node) => type_ = node.getEnumValue<TournamentGrandFinalAdvantageType>((stringValue) => TournamentGrandFinalAdvantageType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['winHeadstart'] = (node) => winHeadstart = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentGrandFinalAdvantageType>('type', type_, (e) => e?.value);
        writer.writeDoubleValue('winHeadstart', winHeadstart);
    }
}
