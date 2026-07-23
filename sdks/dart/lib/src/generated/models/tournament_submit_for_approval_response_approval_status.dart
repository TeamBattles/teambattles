// ignore_for_file: type=lint
/// auto generated
///  The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
enum TournamentSubmitForApprovalResponseApprovalStatus {
    approved('APPROVED'),
    awaitingApproval('AWAITING_APPROVAL');
    const TournamentSubmitForApprovalResponseApprovalStatus(this.value);
    final String value;
}
