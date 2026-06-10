// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns the API key owner's own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
class RankRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    LeaderboardSortBy? sortBy;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'sortBy' : sortBy,
        };
    }
}
