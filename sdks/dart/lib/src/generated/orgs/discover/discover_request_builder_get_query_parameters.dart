// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
class DiscoverRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    int? limit;
    ///  Optional organization name search.
    String? search;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'limit' : limit,
            'search' : search,
        };
    }
}
