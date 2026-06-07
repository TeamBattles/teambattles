// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/leaderboard_sort_by.dart';

/// auto generated
/// Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
class OrganizationsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
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
