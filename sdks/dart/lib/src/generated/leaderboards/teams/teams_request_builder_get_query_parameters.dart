// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns active, non-disabled, non-private teams ranked by the requested stat. Requires teams.profile:read.
class TeamsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? gameSlug;
    int? limit;
    LeaderboardSortBy? sortBy;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'gameSlug' : gameSlug,
            'limit' : limit,
            'sortBy' : sortBy,
        };
    }
}
