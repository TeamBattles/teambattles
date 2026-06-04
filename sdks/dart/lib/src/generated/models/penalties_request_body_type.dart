// ignore_for_file: type=lint
/// auto generated
///  Which record kinds to return. Defaults to all.
enum PenaltiesRequestBodyType {
    penalties('penalties'),
    cooldowns('cooldowns'),
    all('all');
    const PenaltiesRequestBodyType(this.value);
    final String value;
}
