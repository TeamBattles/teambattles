// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner's teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
class CalendarRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Window end, ISO 8601. Defaults to 30 days after `rangeStart`.
    String? rangeEnd;
    ///  Window start, ISO 8601. Defaults to the time of the request.
    String? rangeStart;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'rangeEnd' : rangeEnd,
            'rangeStart' : rangeStart,
        };
    }
}
