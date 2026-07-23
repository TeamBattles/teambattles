// ignore_for_file: type=lint
/// auto generated
///  Lifecycle status of a tournament.
enum TournamentStatus {
    draft('DRAFT'),
    registrationOpen('REGISTRATION_OPEN'),
    registrationClosed('REGISTRATION_CLOSED'),
    inProgress('IN_PROGRESS'),
    completed('COMPLETED'),
    cancelled('CANCELLED');
    const TournamentStatus(this.value);
    final String value;
}
