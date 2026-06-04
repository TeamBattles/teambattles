// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
class ChannelRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
    String? id;
    ///  Channel login name (e.g. ninja). Provide exactly one of username or id.
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
