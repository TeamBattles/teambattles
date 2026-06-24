// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/announce_league_request_body.dart';
import '../../../models/announce_league_response.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\announcements
class AnnouncementsRequestBuilder extends BaseRequestBuilder<AnnouncementsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AnnouncementsRequestBuilder clone() {
        return AnnouncementsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AnnouncementsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AnnouncementsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/announcements", pathParameters) ;
    /// Instantiates a new [AnnouncementsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AnnouncementsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/announcements", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sends an announcement to all members of the league. Requires a league-operator key bound to the league and the league announcements capability.
    ///  [body] Sends an announcement to all members of the league.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AnnounceLeagueResponse?> postAsync(AnnounceLeagueRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AnnounceLeagueResponse>(requestInfo, AnnounceLeagueResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sends an announcement to all members of the league. Requires a league-operator key bound to the league and the league announcements capability.
    ///  [body] Sends an announcement to all members of the league.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AnnounceLeagueRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
