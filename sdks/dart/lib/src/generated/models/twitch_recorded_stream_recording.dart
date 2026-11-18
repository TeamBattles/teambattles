// ignore_for_file: type=lint
/// auto generated
///  available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
enum TwitchRecordedStreamRecording {
    available('available'),
    unverified('unverified'),
    removed('removed');
    const TwitchRecordedStreamRecording(this.value);
    final String value;
}
