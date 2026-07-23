// ignore_for_file: type=lint
/// auto generated
///  State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
enum TournamentFreeAgentOfferStatus {
    pending('PENDING'),
    accepted('ACCEPTED'),
    declined('DECLINED'),
    expired('EXPIRED'),
    revoked('REVOKED');
    const TournamentFreeAgentOfferStatus(this.value);
    final String value;
}
