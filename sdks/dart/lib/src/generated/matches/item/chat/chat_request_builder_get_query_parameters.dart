// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
class ChatRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Opaque continuation cursor from a prior page's nextCursor.
    String? cursor;
    ///  Page size (1-100). Defaults to 50.
    String? limit;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'cursor' : cursor,
            'limit' : limit,
        };
    }
}
