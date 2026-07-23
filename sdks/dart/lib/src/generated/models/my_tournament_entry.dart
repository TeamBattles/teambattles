// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './my_tournament_actable_team.dart';
import './my_tournament_free_agent.dart';
import './my_tournament_invite.dart';
import './my_tournament_offer.dart';
import './my_tournament_participant.dart';
import './my_tournament_roster_entry.dart';

/// auto generated
/// The API key owner's own state in one tournament.
class MyTournamentEntry implements Parsable {
    ///  Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
    Iterable<MyTournamentActableTeam>? actableTeams;
    ///  The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
    MyTournamentFreeAgent? freeAgent;
    ///  Every invite addressed to an actable team, in all four states.
    Iterable<MyTournamentInvite>? invites;
    ///  Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
    Iterable<MyTournamentOffer>? offers;
    ///  Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
    Iterable<MyTournamentParticipant>? participants;
    ///  True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
    bool? requiredConnectionMissing;
    ///  Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
    Iterable<MyTournamentRosterEntry>? rosterEntries;
    ///  The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
    String? slug;
    ///  Tournament ID.
    String? tournamentId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['actableTeams'] = (node) => actableTeams = node.getCollectionOfObjectValues<MyTournamentActableTeam>(MyTournamentActableTeam.createFromDiscriminatorValue);
        deserializerMap['freeAgent'] = (node) => freeAgent = node.getObjectValue<MyTournamentFreeAgent>(MyTournamentFreeAgent.createFromDiscriminatorValue);
        deserializerMap['invites'] = (node) => invites = node.getCollectionOfObjectValues<MyTournamentInvite>(MyTournamentInvite.createFromDiscriminatorValue);
        deserializerMap['offers'] = (node) => offers = node.getCollectionOfObjectValues<MyTournamentOffer>(MyTournamentOffer.createFromDiscriminatorValue);
        deserializerMap['participants'] = (node) => participants = node.getCollectionOfObjectValues<MyTournamentParticipant>(MyTournamentParticipant.createFromDiscriminatorValue);
        deserializerMap['requiredConnectionMissing'] = (node) => requiredConnectionMissing = node.getBoolValue();
        deserializerMap['rosterEntries'] = (node) => rosterEntries = node.getCollectionOfObjectValues<MyTournamentRosterEntry>(MyTournamentRosterEntry.createFromDiscriminatorValue);
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['tournamentId'] = (node) => tournamentId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<MyTournamentActableTeam>('actableTeams', actableTeams);
        writer.writeObjectValue<MyTournamentFreeAgent>('freeAgent', freeAgent);
        writer.writeCollectionOfObjectValues<MyTournamentInvite>('invites', invites);
        writer.writeCollectionOfObjectValues<MyTournamentOffer>('offers', offers);
        writer.writeCollectionOfObjectValues<MyTournamentParticipant>('participants', participants);
        writer.writeBoolValue('requiredConnectionMissing', value:requiredConnectionMissing);
        writer.writeCollectionOfObjectValues<MyTournamentRosterEntry>('rosterEntries', rosterEntries);
        writer.writeStringValue('slug', slug);
        writer.writeStringValue('tournamentId', tournamentId);
    }
}
