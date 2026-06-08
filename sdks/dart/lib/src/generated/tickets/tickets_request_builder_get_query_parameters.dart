// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
class TicketsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Opaque continuation cursor from a prior page's nextCursor.
    String? cursor;
    ///  Page size (1-100). Defaults to 25.
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
