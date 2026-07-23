// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_bracket_display.dart';
import './tournament_bracket_nodes.dart';
import './tournament_bracket_rounds.dart';
import './tournament_grand_final_advantage.dart';

/// auto generated
/// Rounds, nodes, and participant display data.
class TournamentBracket implements Parsable {
    ///  Participant ID -> { name, avatarUrl, seed } display map.
    TournamentBracketDisplay? display;
    ///  Participant IDs currently disqualified.
    Iterable<String>? disqualified;
    ///  Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
    TournamentGrandFinalAdvantage? grandFinalAdvantage;
    ///  Bracket node documents (slots, results, and links).
    Iterable<TournamentBracketNodes>? nodes;
    ///  Round documents, ordered by round number ascending.
    Iterable<TournamentBracketRounds>? rounds;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentBracket createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentBracket();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['display'] = (node) => display = node.getObjectValue<TournamentBracketDisplay>(TournamentBracketDisplay.createFromDiscriminatorValue);
        deserializerMap['disqualified'] = (node) => disqualified = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['grandFinalAdvantage'] = (node) => grandFinalAdvantage = node.getObjectValue<TournamentGrandFinalAdvantage>(TournamentGrandFinalAdvantage.createFromDiscriminatorValue);
        deserializerMap['nodes'] = (node) => nodes = node.getCollectionOfObjectValues<TournamentBracketNodes>(TournamentBracketNodes.createFromDiscriminatorValue);
        deserializerMap['rounds'] = (node) => rounds = node.getCollectionOfObjectValues<TournamentBracketRounds>(TournamentBracketRounds.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentBracketDisplay>('display', display);
        writer.writeCollectionOfPrimitiveValues<String?>('disqualified', disqualified);
        writer.writeObjectValue<TournamentGrandFinalAdvantage>('grandFinalAdvantage', grandFinalAdvantage);
        writer.writeCollectionOfObjectValues<TournamentBracketNodes>('nodes', nodes);
        writer.writeCollectionOfObjectValues<TournamentBracketRounds>('rounds', rounds);
    }
}
