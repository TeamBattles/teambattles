// ignore_for_file: type=lint
/// auto generated
///  State of the caller's free-agent pool row.
enum TournamentFreeAgentStatus {
    available('AVAILABLE'),
    pickedUp('PICKED_UP'),
    withdrawn('WITHDRAWN');
    const TournamentFreeAgentStatus(this.value);
    final String value;
}
