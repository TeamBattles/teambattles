// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './members_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \teams\{identifier}\members
class MembersRequestBuilder extends BaseRequestBuilder<MembersRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    MembersRequestBuilder clone() {
        return MembersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MembersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MembersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}/members", pathParameters) ;
    /// Instantiates a new [MembersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MembersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}/members", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MembersGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MembersGetResponse>(requestInfo, MembersGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
