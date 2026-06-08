// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/issue_cooldown_request_body.dart';
import '../../../../models/issue_cooldown_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\cooldowns\issue
class IssueRequestBuilder extends BaseRequestBuilder<IssueRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    IssueRequestBuilder clone() {
        return IssueRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [IssueRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    IssueRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/issue", pathParameters) ;
    /// Instantiates a new [IssueRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    IssueRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/issue", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Issues or updates a manual cooldown for a league member. Requires a league-operator key bound to the league and the league cooldowns capability.
    ///  [body] Issues or updates a manual league member cooldown.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<IssueCooldownResponse?> postAsync(IssueCooldownRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<IssueCooldownResponse>(requestInfo, IssueCooldownResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Issues or updates a manual cooldown for a league member. Requires a league-operator key bound to the league and the league cooldowns capability.
    ///  [body] Issues or updates a manual league member cooldown.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(IssueCooldownRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
