// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
class PlayersRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    int? limit;
    LeaderboardSortBy? sortBy;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'limit' : limit,
            'sortBy' : sortBy,
        };
    }
}
