// ignore_for_file: type=lint
/// auto generated
///  favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
enum StreamSignalsBodyChannelsKind {
    favorite('favorite'),
    follow('follow'),
    watch('watch');
    const StreamSignalsBodyChannelsKind(this.value);
    final String value;
}
