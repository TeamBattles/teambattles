// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns an organization's rank for the requested leaderboard filters. Organization stats are computed from active, enabled, non-private teams. Requires orgs.profile:read.
class RankRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? gameSlug;
    LeaderboardSortBy? sortBy;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'gameSlug' : gameSlug,
            'sortBy' : sortBy,
        };
    }
}
