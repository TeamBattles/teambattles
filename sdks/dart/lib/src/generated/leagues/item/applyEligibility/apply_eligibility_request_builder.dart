// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_apply_eligibility.dart';
import '../../../models/league_apply_eligibility_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\apply-eligibility
class ApplyEligibilityRequestBuilder extends BaseRequestBuilder<ApplyEligibilityRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ApplyEligibilityRequestBuilder clone() {
        return ApplyEligibilityRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ApplyEligibilityRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApplyEligibilityRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/apply-eligibility", pathParameters) ;
    /// Instantiates a new [ApplyEligibilityRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApplyEligibilityRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/apply-eligibility", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns apply-to-join eligibility for the API key owner's applicable teams, or for a specified team the owner leads. Requires leagues.league_public:read.
    ///  [body] Optional team-specific league application eligibility selector.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueApplyEligibility?> postAsync(LeagueApplyEligibilityRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueApplyEligibility>(requestInfo, LeagueApplyEligibility.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns apply-to-join eligibility for the API key owner's applicable teams, or for a specified team the owner leads. Requires leagues.league_public:read.
    ///  [body] Optional team-specific league application eligibility selector.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(LeagueApplyEligibilityRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
