// ignore_for_file: type=lint
/// auto generated
///  Filter bans by computed status. Defaults to all.
enum BansRequestBodyStatus {
    active('active'),
    expired('expired'),
    revoked('revoked'),
    all('all');
    const BansRequestBodyStatus(this.value);
    final String value;
}
