// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
class HistoryRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Twitch user id (e.g. 71092938). Provide exactly one of username or id.
    String? id;
    ///  Channel login (e.g. xqc). Provide exactly one of username or id.
    String? username;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'id' : id,
            'username' : username,
        };
    }
}
