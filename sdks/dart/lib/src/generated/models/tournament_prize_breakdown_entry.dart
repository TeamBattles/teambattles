// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// One prize-pool placement row.
class TournamentPrizeBreakdownEntry implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The amount property
    double? amount;
    ///  The description property
    String? description;
    ///  The placement property
    int? placement;
    /// Instantiates a new [TournamentPrizeBreakdownEntry] and sets the default values.
    TournamentPrizeBreakdownEntry() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentPrizeBreakdownEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentPrizeBreakdownEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['amount'] = (node) => amount = node.getDoubleValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['placement'] = (node) => placement = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('amount', amount);
        writer.writeStringValue('description', description);
        writer.writeIntValue('placement', placement);
        writer.writeAdditionalData(additionalData);
    }
}
