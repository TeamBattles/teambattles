// ignore_for_file: type=lint
/// auto generated
///  Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
enum TournamentUpdateResponseApprovalStatus {
    notSubmitted('NOT_SUBMITTED'),
    awaitingApproval('AWAITING_APPROVAL'),
    approved('APPROVED'),
    rejected('REJECTED');
    const TournamentUpdateResponseApprovalStatus(this.value);
    final String value;
}
