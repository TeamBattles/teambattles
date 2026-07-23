// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_calendar_response.dart';
import './calendar_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \user\tournaments\calendar
class CalendarRequestBuilder extends BaseRequestBuilder<CalendarRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CalendarRequestBuilder clone() {
        return CalendarRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CalendarRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CalendarRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/tournaments/calendar{?rangeEnd*,rangeStart*}", pathParameters) ;
    /// Instantiates a new [CalendarRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CalendarRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/tournaments/calendar{?rangeEnd*,rangeStart*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner's teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentCalendarResponse?> getAsync([void Function(RequestConfiguration<CalendarRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentCalendarResponse>(requestInfo, TournamentCalendarResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner's teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<CalendarRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CalendarRequestBuilderGetQueryParameters>(requestConfiguration, () => CalendarRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
