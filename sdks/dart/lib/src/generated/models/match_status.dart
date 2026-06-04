// ignore_for_file: type=lint
/// auto generated
///  Lifecycle status of a match.
enum MatchStatus {
    pending('PENDING'),
    accepted('ACCEPTED'),
    ready('READY'),
    inProgress('IN_PROGRESS'),
    completed('COMPLETED'),
    cancelled('CANCELLED'),
    disputed('DISPUTED'),
    forfeited('FORFEITED');
    const MatchStatus(this.value);
    final String value;
}
