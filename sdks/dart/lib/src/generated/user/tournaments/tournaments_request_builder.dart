// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/my_tournaments_response.dart';
import './calendar/calendar_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \user\tournaments
class TournamentsRequestBuilder extends BaseRequestBuilder<TournamentsRequestBuilder> {
    ///  The calendar property
    CalendarRequestBuilder get calendar {
        return CalendarRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TournamentsRequestBuilder clone() {
        return TournamentsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TournamentsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TournamentsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/tournaments", pathParameters) ;
    /// Instantiates a new [TournamentsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TournamentsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/tournaments", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the tournaments the API key owner hosts or holds tournament staff on, including drafts and unapproved ones. Ordered attention-first, then most recently updated, and capped at 100. Requires tournaments.tournament_admin:read - the public read scope is deliberately insufficient because this surface exposes unlisted tournaments.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MyTournamentsResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MyTournamentsResponse>(requestInfo, MyTournamentsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the tournaments the API key owner hosts or holds tournament staff on, including drafts and unapproved ones. Ordered attention-first, then most recently updated, and capped at 100. Requires tournaments.tournament_admin:read - the public read scope is deliberately insufficient because this surface exposes unlisted tournaments.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
