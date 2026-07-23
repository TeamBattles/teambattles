// ignore_for_file: type=lint
/// auto generated
///  The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
enum TournamentCancelResponseApprovalStatus {
    notSubmitted('NOT_SUBMITTED'),
    awaitingApproval('AWAITING_APPROVAL'),
    approved('APPROVED'),
    rejected('REJECTED');
    const TournamentCancelResponseApprovalStatus(this.value);
    final String value;
}
