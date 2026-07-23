// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// One placement -> points row.
class TournamentPlacementPointsEntry implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Final placement, 1 = champion.
    int? placement;
    ///  League points awarded, 0-1000.
    double? points;
    /// Instantiates a new [TournamentPlacementPointsEntry] and sets the default values.
    TournamentPlacementPointsEntry() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentPlacementPointsEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentPlacementPointsEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['placement'] = (node) => placement = node.getIntValue();
        deserializerMap['points'] = (node) => points = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('placement', placement);
        writer.writeDoubleValue('points', points);
        writer.writeAdditionalData(additionalData);
    }
}
