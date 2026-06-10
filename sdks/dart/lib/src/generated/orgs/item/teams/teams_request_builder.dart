// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './teams_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}\teams
class TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TeamsRequestBuilder clone() {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/teams", pathParameters) ;
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/teams", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns an organization's active teams, resolved by slug or organization ID. Readable when the organization is public or the API key owner is an active member - otherwise responds 403. Members see all active teams; non-members do not receive private or disabled teams. The full result set is returned in one response with a count - there is no pagination, limit, or guaranteed sort order. Requires orgs.profile:read.
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
    /// Returns an organization's active teams, resolved by slug or organization ID. Readable when the organization is public or the API key owner is an active member - otherwise responds 403. Members see all active teams; non-members do not receive private or disabled teams. The full result set is returned in one response with a count - there is no pagination, limit, or guaranteed sort order. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
