// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format_config_best_of_ladder.dart';
import './tournament_format_config_grand_final_advantage.dart';
import './tournament_format_config_round_robin_passes.dart';

/// auto generated
/// Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
class TournamentFormatConfig implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Best-of ladder. Both fields are required when formatConfig is sent.
    TournamentFormatConfigBestOfLadder? bestOfLadder;
    ///  The grandFinalAdvantage property
    TournamentFormatConfigGrandFinalAdvantage? grandFinalAdvantage;
    ///  Round-robin only. 1 = single pass, 2 = double pass.
    TournamentFormatConfigRoundRobinPasses? roundRobinPasses;
    ///  Swiss only. Number of rounds to play.
    int? swissRoundCount;
    /// Instantiates a new [TournamentFormatConfig] and sets the default values.
    TournamentFormatConfig() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFormatConfig createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentFormatConfig();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bestOfLadder'] = (node) => bestOfLadder = node.getObjectValue<TournamentFormatConfigBestOfLadder>(TournamentFormatConfigBestOfLadder.createFromDiscriminatorValue);
        deserializerMap['grandFinalAdvantage'] = (node) => grandFinalAdvantage = node.getObjectValue<TournamentFormatConfigGrandFinalAdvantage>(TournamentFormatConfigGrandFinalAdvantage.createFromDiscriminatorValue);
        deserializerMap['roundRobinPasses'] = (node) => roundRobinPasses = node.getObjectValue<TournamentFormatConfigRoundRobinPasses>(TournamentFormatConfigRoundRobinPasses.createFromDiscriminatorValue);
        deserializerMap['swissRoundCount'] = (node) => swissRoundCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentFormatConfigBestOfLadder>('bestOfLadder', bestOfLadder);
        writer.writeObjectValue<TournamentFormatConfigGrandFinalAdvantage>('grandFinalAdvantage', grandFinalAdvantage);
        writer.writeObjectValue<TournamentFormatConfigRoundRobinPasses>('roundRobinPasses', roundRobinPasses);
        writer.writeIntValue('swissRoundCount', swissRoundCount);
        writer.writeAdditionalData(additionalData);
    }
}
