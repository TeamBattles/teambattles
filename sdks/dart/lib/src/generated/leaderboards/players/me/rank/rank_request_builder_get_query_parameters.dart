// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns the API key owner's rank in the global player leaderboard. gameSlug is not supported. Requires users.profile:read.
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
