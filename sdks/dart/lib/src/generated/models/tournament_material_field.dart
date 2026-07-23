// ignore_for_file: type=lint
/// auto generated
///  A tournament field whose edit requires staff re-approval once approved.
enum TournamentMaterialField {
    name('name'),
    description('description'),
    rules('rules'),
    gameId('gameId'),
    playlistId('playlistId'),
    teamSize('teamSize'),
    format('format'),
    formatConfig('formatConfig'),
    minParticipants('minParticipants'),
    maxParticipants('maxParticipants'),
    registrationMode('registrationMode'),
    registrationStartsAt('registrationStartsAt'),
    registrationEndsAt('registrationEndsAt'),
    checkInRequired('checkInRequired'),
    checkInOpensMinutesBefore('checkInOpensMinutesBefore'),
    startsAt('startsAt'),
    endsAt('endsAt'),
    prizePool('prizePool'),
    prizeCurrency('prizeCurrency'),
    prizeBreakdown('prizeBreakdown'),
    prizeDescription('prizeDescription'),
    bannerStorageId('bannerStorageId'),
    logoStorageId('logoStorageId'),
    sponsorTags('sponsorTags'),
    socialLinks('socialLinks'),
    visibility('visibility');
    const TournamentMaterialField(this.value);
    final String value;
}
