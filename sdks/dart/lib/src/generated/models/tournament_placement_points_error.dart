// ignore_for_file: type=lint
/// auto generated
///  Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
enum TournamentPlacementPointsError {
    empty('EMPTY'),
    allZero('ALL_ZERO'),
    tooManyRows('TOO_MANY_ROWS'),
    badPlacement('BAD_PLACEMENT'),
    badPoints('BAD_POINTS'),
    duplicate('DUPLICATE'),
    notAscending('NOT_ASCENDING');
    const TournamentPlacementPointsError(this.value);
    final String value;
}
