// ignore_for_file: type=lint
/// auto generated
///  State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
enum TournamentParticipantStatus {
    pending('PENDING'),
    approved('APPROVED'),
    denied('DENIED'),
    withdrawn('WITHDRAWN'),
    removed('REMOVED'),
    disqualified('DISQUALIFIED');
    const TournamentParticipantStatus(this.value);
    final String value;
}
