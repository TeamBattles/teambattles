// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/leaderboard_sort_by.dart';

/// auto generated
/// Resolves a single team by slug or ID and returns its 1-indexed rank on the public team leaderboard. `sortBy` selects the ranking field: wins (default), winRate, or experience. Pass `gameSlug` to rank within one game's leaderboard; omit it for the global (all-games) board. An unknown `gameSlug` returns 404. `rank` is null when the team is excluded from the leaderboard (private or disabled) and also when the team ranks beyond the internal scan window, since the rank is a bounded best-effort computation rather than a full-table sort. A missing or inactive team returns 404; an active but excluded team returns 200 with rank null. Requires teams.profile:read.
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
