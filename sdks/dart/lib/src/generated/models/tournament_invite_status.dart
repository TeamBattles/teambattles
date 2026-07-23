// ignore_for_file: type=lint
/// auto generated
///  State of a tournament team invite.
enum TournamentInviteStatus {
    pending('PENDING'),
    accepted('ACCEPTED'),
    declined('DECLINED'),
    revoked('REVOKED');
    const TournamentInviteStatus(this.value);
    final String value;
}
