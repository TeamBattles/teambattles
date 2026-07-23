// ignore_for_file: type=lint
/// auto generated
///  registration = registration deadline, checkin = check-in opens, start = tournament start.
enum TournamentCalendarEventKind {
    registration('registration'),
    checkin('checkin'),
    start('start');
    const TournamentCalendarEventKind(this.value);
    final String value;
}
