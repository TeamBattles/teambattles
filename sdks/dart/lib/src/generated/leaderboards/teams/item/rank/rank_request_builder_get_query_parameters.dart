// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
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
