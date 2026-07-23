// ignore_for_file: type=lint
/// auto generated
///  `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
enum TournamentUpdateResponseApplied {
    direct('direct'),
    pending('pending'),
    noop('noop');
    const TournamentUpdateResponseApplied(this.value);
    final String value;
}
