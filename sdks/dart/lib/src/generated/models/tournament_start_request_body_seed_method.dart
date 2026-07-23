// ignore_for_file: type=lint
/// auto generated
///  How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
enum TournamentStartRequestBodySeedMethod {
    manual('manual'),
    random('random'),
    registration('registration');
    const TournamentStartRequestBodySeedMethod(this.value);
    final String value;
}
