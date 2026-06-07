// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns a neutral discovery list of active, public, non-disabled organizations. Results do not exclude organizations the API key owner belongs to and do not include join-request flags. Requires orgs.profile:read.
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
