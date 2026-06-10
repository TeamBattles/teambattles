// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns an organization's 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game's stats only; omit it for the global all-games rank. Organization stats are aggregated from the org's active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
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
