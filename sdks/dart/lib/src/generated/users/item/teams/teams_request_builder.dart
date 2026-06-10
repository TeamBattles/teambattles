// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './teams_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \users\{identifier}\teams
class TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TeamsRequestBuilder clone() {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/teams", pathParameters) ;
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/teams", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TeamsGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TeamsGetResponse>(requestInfo, TeamsGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
