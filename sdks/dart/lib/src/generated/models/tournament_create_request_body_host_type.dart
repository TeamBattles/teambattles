// ignore_for_file: type=lint
/// auto generated
///  Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
enum TournamentCreateRequestBodyHostType {
    user('user'),
    org('org'),
    league('league');
    const TournamentCreateRequestBodyHostType(this.value);
    final String value;
}
