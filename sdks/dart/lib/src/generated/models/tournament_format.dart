// ignore_for_file: type=lint
/// auto generated
///  Bracket format of a tournament.
enum TournamentFormat {
    singleElimination('SINGLE_ELIMINATION'),
    doubleElimination('DOUBLE_ELIMINATION'),
    roundRobin('ROUND_ROBIN'),
    swiss('SWISS');
    const TournamentFormat(this.value);
    final String value;
}
