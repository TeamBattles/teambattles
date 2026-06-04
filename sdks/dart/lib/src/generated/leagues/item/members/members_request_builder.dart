// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_members.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\members
class MembersRequestBuilder extends BaseRequestBuilder<MembersRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    MembersRequestBuilder clone() {
        return MembersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MembersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MembersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/members", pathParameters) ;
    /// Instantiates a new [MembersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MembersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/members", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns staff members for a league resolved by slug. The API key owner must have a MEMBER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueMembers?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueMembers>(requestInfo, LeagueMembers.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns staff members for a league resolved by slug. The API key owner must have a MEMBER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
