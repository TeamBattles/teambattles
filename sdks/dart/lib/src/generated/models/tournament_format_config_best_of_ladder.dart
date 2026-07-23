// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format_config_best_of_ladder_overrides.dart';

/// auto generated
/// Best-of ladder. Both fields are required when formatConfig is sent.
class TournamentFormatConfigBestOfLadder implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Default best-of for every round.
    int? default_;
    ///  Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
    TournamentFormatConfigBestOfLadderOverrides? overrides;
    /// Instantiates a new [TournamentFormatConfigBestOfLadder] and sets the default values.
    TournamentFormatConfigBestOfLadder() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFormatConfigBestOfLadder createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentFormatConfigBestOfLadder();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['default'] = (node) => default_ = node.getIntValue();
        deserializerMap['overrides'] = (node) => overrides = node.getObjectValue<TournamentFormatConfigBestOfLadderOverrides>(TournamentFormatConfigBestOfLadderOverrides.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('default', default_);
        writer.writeObjectValue<TournamentFormatConfigBestOfLadderOverrides>('overrides', overrides);
        writer.writeAdditionalData(additionalData);
    }
}
